local spoilage_tables = require("spoilage_table")

local second = 60
local minute = second * 60
local hour = minute * 60
local day = hour * 24

local recipes = data.raw.recipe

local default_spoilage_result = "spoilage"
local default_spoilage_ticks = 1 * hour

local affected_prototypes = {
    "item",
    "repair-tool",
    "rail-planner",
    "armor",
    "tool",
    "gun",
    "ammo",
    "capsule",
    "module",
    "item-with-entity-data",
}

for _, affected_prototype in pairs(affected_prototypes) do
    for _, prototype in pairs(data.raw[affected_prototype]) do
        local spoil_result = default_spoilage_result
        local spoil_ticks = default_spoilage_ticks

        if spoilage_tables[prototype.name] then
            spoil_result = spoilage_tables[prototype.name].spoil_result
            spoil_ticks = spoilage_tables[prototype.name].spoil_ticks
        elseif prototype.spoil_result then
            spoil_result = prototype.spoil_result
        else
            for _, recipe in pairs(recipes) do
                if recipe.results then
                    for _, result in pairs(recipe.results) do
                        if result.name == prototype.name then
                            local min = math.huge
                            for _, ingredient in pairs(recipe.ingredients) do
                                if ingredient.type == "item" then
                                    if ingredient.amount < min then
                                        min = ingredient.amount
                                        spoil_result = ingredient.name
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end

        if not prototype.spoil_to_trigger_result then
            prototype.spoil_result = (prototype.name == spoil_result and "spoilage") or
                (spoil_result == "" and nil or spoil_result)
        end
        prototype.spoil_ticks = prototype.spoil_ticks or (spoil_ticks == 0 and nil or spoil_ticks)
    end
end
