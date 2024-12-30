local second = 60
local minute = second * 60
local hour = minute * 60
local day = hour * 24

local spoilage_table = {}

spoilage_table["spoilage"] = { spoil_result = "", spoil_ticks = 0 }

-- Raw Resources
spoilage_table["iron-ore"] = { spoil_result = "stone", spoil_ticks = 2 * hour }
spoilage_table["copper-ore"] = { spoil_result = "stone", spoil_ticks = 2 * hour }
spoilage_table["stone"] = { spoil_result = "spoilage", spoil_ticks = 2 * hour }
spoilage_table["coal"] = { spoil_result = "carbon", spoil_ticks = 2 * hour }
spoilage_table["uranium-ore"] = { spoil_result = "stone", spoil_ticks = 2 * hour }
spoilage_table["wood"] = { spoil_result = "spoilage", spoil_ticks = 2 * hour }
spoilage_table["tungsten-ore"] = { spoil_result = "stone", spoil_ticks = 2 * hour }
spoilage_table["holmium-ore"] = { spoil_result = "stone", spoil_ticks = 2 * hour }
spoilage_table["scrap"] = { spoil_result = "iron-ore", spoil_ticks = 2 * hour }
spoilage_table["calcite"] = { spoil_result = "stone", spoil_ticks = 2 * hour }

-- Intermediates
spoilage_table["iron-plate"] = { spoil_result = "iron-ore", spoil_ticks = 1 * hour }
spoilage_table["copper-plate"] = { spoil_result = "copper-ore", spoil_ticks = 1 * hour }
spoilage_table["iron-gear-wheel"] = { spoil_result = "iron-plate", spoil_ticks = 15 * minute }
spoilage_table["copper-cable"] = { spoil_result = "copper-plate", spoil_ticks = 15 * minute }
spoilage_table["iron-stick"] = { spoil_result = "iron-plate", spoil_ticks = 15 * minute }
spoilage_table["steel-plate"] = { spoil_result = "iron-plate", spoil_ticks = 1 * hour }
spoilage_table["electronic-circuit"] = { spoil_result = "copper-cable", spoil_ticks = 1 * hour }
spoilage_table["advanced-circuit"] = { spoil_result = "electronic-circuit", spoil_ticks = 2 * hour }
spoilage_table["processing-unit"] = { spoil_result = "advanced-circuit", spoil_ticks = 3 * hour }
spoilage_table["plastic-bar"] = { spoil_result = "coal", spoil_ticks = 1 * hour }
spoilage_table["sulfur"] = { spoil_result = "spoilage", spoil_ticks = 2 * hour }
spoilage_table["battery"] = { spoil_result = "sulfur", spoil_ticks = 2 * hour }
spoilage_table["explosives"] = { spoil_result = "sulfur", spoil_ticks = 30 * minute }
spoilage_table["engine-unit"] = { spoil_result = "steel-plate", spoil_ticks = 2 * hour }
spoilage_table["electric-engine-unit"] = { spoil_result = "engine-unit", spoil_ticks = 2 * hour }
spoilage_table["flying-robot-frame"] = { spoil_result = "electric-engine-unit", spoil_ticks = 3 * hour }
spoilage_table["low-density-structure"] = { spoil_result = "steel-plate", spoil_ticks = 3 * hour }
spoilage_table["solid-fuel"] = { spoil_result = "coal", spoil_ticks = 1 * hour }
spoilage_table["rocket-fuel"] = { spoil_result = "solid-fuel", spoil_ticks = 3 * hour }
spoilage_table["nuclear-fuel"] = { spoil_result = "uranium-235", spoil_ticks = 4 * hour }
spoilage_table["uranium-235"] = { spoil_result = "uranium-238", spoil_ticks = 2 * hour }
spoilage_table["uranium-238"] = { spoil_result = "uranium-ore", spoil_ticks = 3 * hour }
spoilage_table["barrel"] = { spoil_result = "steel-plate", spoil_ticks = 30 * minute }
spoilage_table["uranium-fuel-cell"] = { spoil_result = "depleted-uranium-fuel-cell", spoil_ticks = 3 * hour }
spoilage_table["depleted-uranium-fuel-cell"] = { spoil_result = "uranium-238", spoil_ticks = 6 * hour }
spoilage_table["carbon"] = { spoil_result = "spoilage", spoil_ticks = 2 * hour }
spoilage_table["ice"] = { spoil_result = "", spoil_ticks = 5 * minute }
spoilage_table["tungsten-plate"] = { spoil_result = "tungsten-ore", spoil_ticks = 1 * hour }
spoilage_table["tungsten-carbide"] = { spoil_result = "tungsten-ore", spoil_ticks = 1 * hour }
spoilage_table["holmium-plate"] = { spoil_result = "holmium-ore", spoil_ticks = 1 * hour }
spoilage_table["superconductor"] = { spoil_result = "holmium-plate", spoil_ticks = 2 * hour }
spoilage_table["supercapacitor"] = { spoil_result = "superconductor", spoil_ticks = 3 * hour }
spoilage_table["yumako-seed"] = { spoil_result = "spoilage", spoil_ticks = 2 * hour }
spoilage_table["jellynut-seed"] = { spoil_result = "spoilage", spoil_ticks = 2 * hour }
spoilage_table["tree-seed"] = { spoil_result = "spoilage", spoil_ticks = 2 * hour }
spoilage_table["carbon-fiber"] = { spoil_result = "carbon", spoil_ticks = 1 * hour }
spoilage_table["lithium"] = { spoil_result = "spoilage", spoil_ticks = 2 * hour }
spoilage_table["lithium-plate"] = { spoil_result = "lithium", spoil_ticks = 1 * hour }
spoilage_table["quantum-processor"] = { spoil_result = "processing-unit", spoil_ticks = 3 * hour + 30 * minute }
spoilage_table["fusion-power-cell"] = { spoil_result = "lithium-plate", spoil_ticks = 6 * hour }

-- Cliffs
spoilage_table["cliff-explosives"] = { spoil_result = "explosives", spoil_ticks = 2 * hour }


-- Equipment
spoilage_table["solar-panel-equipment"] = { spoil_result = "solar-panel", spoil_ticks = 2 * hour }
spoilage_table["fission-reactor-equipment"] = { spoil_result = "uranium-235", spoil_ticks = 4 * hour }
spoilage_table["battery-equipment"] = { spoil_result = "battery", spoil_ticks = 30 * minute }
spoilage_table["battery-mk2-equipment"] = { spoil_result = "battery-equipment", spoil_ticks = 1 * hour }
spoilage_table["battery-mk3-equipment"] = { spoil_result = "battery-mk2-equipment", spoil_ticks = 1 * hour + 30 * minute }
spoilage_table["belt-immunity-equipment"] = { spoil_result = "advanced-circuit", spoil_ticks = 2 * hour }
spoilage_table["exoskeleton-equipment"] = { spoil_result = "electric-engine-unit", spoil_ticks = 3 * hour }
spoilage_table["personal-roboport-equipment"] = {
    spoil_result = "advanced-circuit",
    spoil_ticks = 2 * hour +
        30 * minute
}
spoilage_table["personal-roboport-mk2-equipment"] = {
    spoil_result = "personal-roboport-equipment",
    spoil_ticks = 5 *
        hour
}
spoilage_table["night-vision-equipment"] = { spoil_result = "advanced-circuit", spoil_ticks = 2 * hour }
spoilage_table["energy-shield-equipment"] = { spoil_result = "advanced-circuit", spoil_ticks = 2 * hour }
spoilage_table["energy-shield-mk2-equipment"] = { spoil_result = "energy-shield-equipment", spoil_ticks = 4 * hour }
spoilage_table["personal-laser-defense-equipment"] = { spoil_result = "laser-turret", spoil_ticks = 3 * hour }
spoilage_table["discharge-defense-equipment"] = { spoil_result = "processing-unit", spoil_ticks = 3 * hour }
spoilage_table["toolbelt-equipment"] = { spoil_result = "carbon-fiber", spoil_ticks = 2 * hour }
spoilage_table["fusion-reactor-equipment"] = { spoil_result = "fission-reactor-equipment", spoil_ticks = 6 * hour }

-- Capsules
spoilage_table["discharge-defense-remote"] = { spoil_result = "", spoil_ticks = 1 * hour }
spoilage_table["defender-capsule"] = { spoil_result = "piercing-rounds-magazine", spoil_ticks = 1 * hour }
spoilage_table["distractor-capsule"] = { spoil_result = "defender-capsule", spoil_ticks = 2 * hour }
spoilage_table["destroyer-capsule"] = { spoil_result = "distractor-capsule", spoil_ticks = 3 * hour }
spoilage_table["grenade"] = { spoil_result = "coal", spoil_ticks = 1 * hour + 30 * minute }
spoilage_table["cluster-grenade"] = { spoil_result = "grenade", spoil_ticks = 3 * hour }
spoilage_table["poison-capsule"] = { spoil_result = "coal", spoil_ticks = 30 * minute }
spoilage_table["slowdown-capsule"] = { spoil_result = "coal", spoil_ticks = 30 * minute }

-- Power
spoilage_table["solar-panel"] = { spoil_result = "steel-plate", spoil_ticks = 2 * hour }
spoilage_table["accumulator"] = { spoil_result = "battery", spoil_ticks = 2 * hour }
spoilage_table["boiler"] = { spoil_result = "stone-furnace", spoil_ticks = 1 * hour }
spoilage_table["steam-engine"] = { spoil_result = "pipe", spoil_ticks = 1 * hour }
spoilage_table["steam-turbine"] = { spoil_result = "steam-engine", spoil_ticks = 2 * hour }
spoilage_table["heat-exchanger"] = { spoil_result = "boiler", spoil_ticks = 2 * hour }
spoilage_table["heat-pipe"] = { spoil_result = "pipe", spoil_ticks = 30 * minute }
spoilage_table["nuclear-reactor"] = { spoil_result = "advanced-circuit", spoil_ticks = 4 * hour }
spoilage_table["fusion-reactor"] = { spoil_result = "nuclear-reactor", spoil_ticks = 8 * hour }
spoilage_table["fusion-generator"] = { spoil_result = "steam-turbine", spoil_ticks = 6 * hour }
spoilage_table["lightning-collector"] = { spoil_result = "lightning-rod", spoil_ticks = 2 * hour }
spoilage_table["lightning-rod"] = { spoil_result = "steel-plate", spoil_ticks = 1 * hour }
spoilage_table["heating-tower"] = { spoil_result = "heat-pipe", spoil_ticks = 2 * hour }

-- Fluid
spoilage_table["pump"] = { spoil_result = "engine-unit", spoil_ticks = 1 * hour }
spoilage_table["pipe"] = { spoil_result = "iron-plate", spoil_ticks = 30 * minute }
spoilage_table["pipe-to-ground"] = { spoil_result = "pipe", spoil_ticks = 1 * hour }
spoilage_table["storage-tank"] = { spoil_result = "steel-plate", spoil_ticks = 1 * hour }

-- Chests
spoilage_table["wooden-chest"] = { spoil_result = "wood", spoil_ticks = 1 * hour }
spoilage_table["iron-chest"] = { spoil_result = "iron-plate", spoil_ticks = 2 * hour }
spoilage_table["steel-chest"] = { spoil_result = "steel-plate", spoil_ticks = 3 * hour }
spoilage_table["passive-provider-chest"] = { spoil_result = "steel-chest", spoil_ticks = 4 * hour }
spoilage_table["active-provider-chest"] = { spoil_result = "steel-chest", spoil_ticks = 4 * hour }
spoilage_table["storage-chest"] = { spoil_result = "steel-chest", spoil_ticks = 4 * hour }
spoilage_table["requester-chest"] = { spoil_result = "steel-chest", spoil_ticks = 4 * hour }
spoilage_table["buffer-chest"] = { spoil_result = "steel-chest", spoil_ticks = 4 * hour }

-- Furnaces
spoilage_table["stone-furnace"] = { spoil_result = "stone", spoil_ticks = 1 * hour }
spoilage_table["steel-furnace"] = { spoil_result = "stone-furnace", spoil_ticks = 2 * hour }
spoilage_table["electric-furnace"] = { spoil_result = "steel-furnace", spoil_ticks = 3 * hour }
spoilage_table["foundry"] = { spoil_result = "tungsten-carbide", spoil_ticks = 4 * hour }
spoilage_table["recycler"] = { spoil_result = "processing-unit", spoil_ticks = 4 * hour }

-- Inserters
spoilage_table["burner-inserter"] = { spoil_result = "iron-plate", spoil_ticks = 1 * hour }
spoilage_table["inserter"] = { spoil_result = "burner-inserter", spoil_ticks = 2 * hour }
spoilage_table["long-handed-inserter"] = { spoil_result = "inserter", spoil_ticks = 3 * hour }
spoilage_table["fast-inserter"] = { spoil_result = "inserter", spoil_ticks = 3 * hour }
spoilage_table["bulk-inserter"] = { spoil_result = "fast-inserter", spoil_ticks = 4 * hour }
spoilage_table["stack-inserter"] = { spoil_result = "bulk-inserter", spoil_ticks = 5 * hour }

-- Mining Drills
spoilage_table["offshore-pump"] = { spoil_result = "iron-plate", spoil_ticks = 30 * minute }
spoilage_table["burner-mining-drill"] = { spoil_result = "stone-furnace", spoil_ticks = 1 * hour }
spoilage_table["electric-mining-drill"] = { spoil_result = "burner-mining-drill", spoil_ticks = 2 * hour }
spoilage_table["pumpjack"] = { spoil_result = "pipe", spoil_ticks = 2 * hour }
spoilage_table["big-mining-drill"] = { spoil_result = "electric-mining-drill", spoil_ticks = 3 * hour }

-- Power Poles
spoilage_table["small-electric-pole"] = { spoil_result = "wood", spoil_ticks = 1 * hour }
spoilage_table["medium-electric-pole"] = { spoil_result = "small-electric-pole", spoil_ticks = 2 * hour }
spoilage_table["big-electric-pole"] = { spoil_result = "medium-electric-pole", spoil_ticks = 2 * hour }
spoilage_table["substation"] = { spoil_result = "big-electric-pole", spoil_ticks = 3 * hour }

-- Trains
spoilage_table["rail"] = { spoil_result = "steel-plate", spoil_ticks = 1 * hour + 30 * minute }
spoilage_table["rail-support"] = { spoil_result = "rail", spoil_ticks = 2 * hour }
spoilage_table["rail-ramp"] = { spoil_result = "rail", spoil_ticks = 2 * hour }
spoilage_table["train-stop"] = { spoil_result = "steel-plate", spoil_ticks = 2 * hour }
spoilage_table["rail-signal"] = { spoil_result = "electronic-circuit", spoil_ticks = 1 * hour }
spoilage_table["rail-chain-signal"] = { spoil_result = "electronic-circuit", spoil_ticks = 1 * hour }
spoilage_table["locomotive"] = { spoil_result = "engine-unit", spoil_ticks = 3 * hour }
spoilage_table["cargo-wagon"] = { spoil_result = "steel-plate", spoil_ticks = 3 * hour }
spoilage_table["fluid-wagon"] = { spoil_result = "steel-plate", spoil_ticks = 3 * hour }
spoilage_table["artillery-wagon"] = { spoil_result = "tungsten-plate", spoil_ticks = 6 * hour }

-- Robots
spoilage_table["roboport"] = { spoil_result = "advanced-circuit", spoil_ticks = 4 * hour }
spoilage_table["logistic-robot"] = { spoil_result = "flying-robot-frame", spoil_ticks = 2 * hour }
spoilage_table["construction-robot"] = { spoil_result = "flying-robot-frame", spoil_ticks = 2 * hour }


-- Assembling Machines
spoilage_table["assembling-machine-1"] = { spoil_result = "electronic-circuit", spoil_ticks = 1 * hour }
spoilage_table["assembling-machine-2"] = { spoil_result = "assembling-machine-1", spoil_ticks = 2 * hour }
spoilage_table["assembling-machine-3"] = { spoil_result = "assembling-machine-2", spoil_ticks = 3 * hour }
spoilage_table["chemical-plant"] = { spoil_result = "steel-plate", spoil_ticks = 2 * hour }
spoilage_table["oil-refinery"] = { spoil_result = "steel-plate", spoil_ticks = 3 * hour }
spoilage_table["centrifuge"] = { spoil_result = "advanced-circuit", spoil_ticks = 4 * hour }
spoilage_table["electromagnetic-plant"] = { spoil_result = "holmium-plate", spoil_ticks = 5 * hour }
spoilage_table["cryogenic-plant"] = { spoil_result = "lithium-plate", spoil_ticks = 6 * hour }
spoilage_table["biochamber"] = { spoil_result = "pentapod-egg", spoil_ticks = 5 * hour }

-- Science
spoilage_table["lab"] = { spoil_result = "transport-belt", spoil_ticks = 5 * hour }
spoilage_table["automation-science-pack"] = { spoil_result = "spoilage", spoil_ticks = 1 * hour }
spoilage_table["logistic-science-pack"] = { spoil_result = "spoilage", spoil_ticks = 1 * hour }
spoilage_table["military-science-pack"] = { spoil_result = "spoilage", spoil_ticks = 1 * hour }
spoilage_table["chemical-science-pack"] = { spoil_result = "spoilage", spoil_ticks = 1 * hour }
spoilage_table["production-science-pack"] = { spoil_result = "spoilage", spoil_ticks = 1 * hour }
spoilage_table["utility-science-pack"] = { spoil_result = "spoilage", spoil_ticks = 1 * hour }
spoilage_table["space-science-pack"] = { spoil_result = "spoilage", spoil_ticks = 1 * hour }
spoilage_table["metallurgic-science-pack"] = { spoil_result = "spoilage", spoil_ticks = 1 * hour }
spoilage_table["electromagnetic-science-pack"] = { spoil_result = "spoilage", spoil_ticks = 1 * hour }
spoilage_table["cryogenic-science-pack"] = { spoil_result = "spoilage", spoil_ticks = 1 * hour }
spoilage_table["promethium-science-pack"] = { spoil_result = "spoilage", spoil_ticks = 1 * hour }

-- Radar
spoilage_table["radar"] = { spoil_result = "electronic-circuit", spoil_ticks = 1 * hour }

-- Circuit Network
spoilage_table["small-lamp"] = { spoil_result = "electronic-circuit", spoil_ticks = 2 * hour }
spoilage_table["decider-combinator"] = { spoil_result = "electronic-circuit", spoil_ticks = 2 * hour }
spoilage_table["arithmetic-combinator"] = { spoil_result = "electronic-circuit", spoil_ticks = 2 * hour }
spoilage_table["constant-combinator"] = { spoil_result = "electronic-circuit", spoil_ticks = 2 * hour }
spoilage_table["programmable-speaker"] = { spoil_result = "electronic-circuit", spoil_ticks = 2 * hour }
spoilage_table["selector-combinator"] = { spoil_result = "decider-combinator", spoil_ticks = 2 * hour }
spoilage_table["power-switch"] = { spoil_result = "electronic-circuit", spoil_ticks = 2 * hour }
spoilage_table["display-panel"] = { spoil_result = "electronic-circuit", spoil_ticks = 2 * hour }

-- Repair Tool
spoilage_table["repair-tool"] = { spoil_result = "electronic-circuit", spoil_ticks = 30 * minute }

-- Walls
spoilage_table["stone-wall"] = { spoil_result = "stone-brick", spoil_ticks = 1 * hour }
spoilage_table["gate"] = { spoil_result = "stone-wall", spoil_ticks = 1 * hour }

-- Vehicles
spoilage_table["car"] = { spoil_result = "engine-unit", spoil_ticks = 4 * hour }
spoilage_table["tank"] = { spoil_result = "car", spoil_ticks = 6 * hour }
spoilage_table["spidertron"] = { spoil_result = "tank", spoil_ticks = 8 * hour }

-- Tiles
spoilage_table["stone-brick"] = { spoil_result = "stone", spoil_ticks = 1 * hour }
spoilage_table["concrete"] = { spoil_result = "stone-brick", spoil_ticks = 1 * hour + 30 * minute }
spoilage_table["hazard-concrete"] = { spoil_result = "concrete", spoil_ticks = 1 * hour + 30 * minute }
spoilage_table["refined-concrete"] = { spoil_result = "concrete", spoil_ticks = 2 * hour }
spoilage_table["refined-hazard-concrete"] = { spoil_result = "refined-concrete", spoil_ticks = 2 * hour }
spoilage_table["landfill"] = { spoil_result = "stone", spoil_ticks = 1 * hour }
spoilage_table["foundation"] = { spoil_result = "lithium-plate", spoil_ticks = 10 * hour }
spoilage_table["artificial-yumako-soil"] = { spoil_result = "landfill", spoil_ticks = 4 * hour }
spoilage_table["artificial-jellynut-soil"] = { spoil_result = "landfill", spoil_ticks = 4 * hour }
spoilage_table["overgrowth-yumako-soil"] = { spoil_result = "artificial-yumako-soil", spoil_ticks = 6 * hour }
spoilage_table["overgrowth-jellynut-soil"] = { spoil_result = "artificial-jellynut-soil", spoil_ticks = 6 * hour }
spoilage_table["ice-platform"] = { spoil_result = "ice", spoil_ticks = 1 * hour }

-- Agriculture
spoilage_table["agricultural-tower"] = { spoil_result = "steel-plate", spoil_ticks = 2 * hour }

-- Transport Belts
spoilage_table["transport-belt"] = { spoil_result = "iron-gear-wheel", spoil_ticks = 1 * hour }
spoilage_table["underground-belt"] = { spoil_result = "transport-belt", spoil_ticks = 1 * hour }
spoilage_table["splitter"] = { spoil_result = "transport-belt", spoil_ticks = 1 * hour }
spoilage_table["fast-transport-belt"] = { spoil_result = "transport-belt", spoil_ticks = 2 * hour }
spoilage_table["fast-underground-belt"] = { spoil_result = "underground-belt", spoil_ticks = 2 * hour }
spoilage_table["fast-splitter"] = { spoil_result = "splitter", spoil_ticks = 2 * hour }
spoilage_table["express-transport-belt"] = { spoil_result = "fast-transport-belt", spoil_ticks = 3 * hour }
spoilage_table["express-underground-belt"] = { spoil_result = "fast-underground-belt", spoil_ticks = 3 * hour }
spoilage_table["express-splitter"] = { spoil_result = "fast-splitter", spoil_ticks = 3 * hour }
spoilage_table["turbo-transport-belt"] = { spoil_result = "express-transport-belt", spoil_ticks = 4 * hour }
spoilage_table["turbo-underground-belt"] = { spoil_result = "express-underground-belt", spoil_ticks = 4 * hour }
spoilage_table["turbo-splitter"] = { spoil_result = "express-splitter", spoil_ticks = 4 * hour }

-- Space
spoilage_table["rocket-silo"] = { spoil_result = "processing-unit", spoil_ticks = 4 * hour }
spoilage_table["satellite"] = { spoil_result = "low-density-structure", spoil_ticks = 3 * hour }
spoilage_table["cargo-landing-pad"] = { spoil_result = "processing-unit", spoil_ticks = 2 * hour }
spoilage_table["space-platform-foundation"] = { spoil_result = "steel-plate", spoil_ticks = 4 * hour }
spoilage_table["cargo-bay"] = { spoil_result = "processing-unit", spoil_ticks = 6 * hour }
spoilage_table["space-platform-starter-pack"] = { spoil_result = "space-platform-foundation", spoil_ticks = 1 * hour }
spoilage_table["metallic-asteroid-chunk"] = { spoil_result = "stone", spoil_ticks = 2 * hour }
spoilage_table["carbonic-asteroid-chunk"] = { spoil_result = "stone", spoil_ticks = 2 * hour }
spoilage_table["oxide-asteroid-chunk"] = { spoil_result = "stone", spoil_ticks = 2 * hour }
spoilage_table["promethium-asteroid-chunk"] = { spoil_result = "stone", spoil_ticks = 2 * hour }
spoilage_table["asteroid-collector"] = { spoil_result = "processing-unit", spoil_ticks = 4 * hour }
spoilage_table["crusher"] = { spoil_result = "electric-engine-unit", spoil_ticks = 4 * hour }
spoilage_table["thruster"] = { spoil_result = "processing-unit", spoil_ticks = 4 * hour }


-- Modules
spoilage_table["beacon"] = { spoil_result = "advanced-circuit", spoil_ticks = 4 * hour }
spoilage_table["speed-module"] = { spoil_result = "advanced-circuit", spoil_ticks = 1 * hour }
spoilage_table["speed-module-2"] = { spoil_result = "speed-module", spoil_ticks = 2 * hour }
spoilage_table["speed-module-3"] = { spoil_result = "speed-module-2", spoil_ticks = 3 * hour }
spoilage_table["effectivity-module"] = { spoil_result = "advanced-circuit", spoil_ticks = 1 * hour }
spoilage_table["effectivity-module-2"] = { spoil_result = "effectivity-module", spoil_ticks = 2 * hour }
spoilage_table["effectivity-module-3"] = { spoil_result = "effectivity-module-2", spoil_ticks = 3 * hour }
spoilage_table["productivity-module"] = { spoil_result = "advanced-circuit", spoil_ticks = 1 * hour }
spoilage_table["productivity-module-2"] = { spoil_result = "productivity-module", spoil_ticks = 2 * hour }
spoilage_table["productivity-module-3"] = { spoil_result = "productivity-module-2", spoil_ticks = 3 * hour }
spoilage_table["quality-module"] = { spoil_result = "advanced-circuit", spoil_ticks = 1 * hour }
spoilage_table["quality-module-2"] = { spoil_result = "quality-module", spoil_ticks = 2 * hour }
spoilage_table["quality-module-3"] = { spoil_result = "quality-module-2", spoil_ticks = 3 * hour }

-- Guns
spoilage_table["pistol"] = { spoil_result = "iron-plate", spoil_ticks = 30 * minute }
spoilage_table["submachine-gun"] = { spoil_result = "pistol", spoil_ticks = 1 * hour }
spoilage_table["shotgun"] = { spoil_result = "pistol", spoil_ticks = 1 * hour }
spoilage_table["combat-shotgun"] = { spoil_result = "shotgun", spoil_ticks = 2 * hour }
spoilage_table["rocket-launcher"] = { spoil_result = "submachine-gun", spoil_ticks = 2 * hour }
spoilage_table["flamethrower"] = { spoil_result = "submachine-gun", spoil_ticks = 2 * hour }
spoilage_table["land-mine"] = { spoil_result = "explosives", spoil_ticks = 2 * hour }
spoilage_table["teslagun"] = { spoil_result = "superconductor", spoil_ticks = 3 * hour }
spoilage_table["railgun"] = { spoil_result = "quantum-processor", spoil_ticks = 4 * hour }

-- Ammo
spoilage_table["flamethrower-ammo"] = { spoil_result = "steel-plate", spoil_ticks = 1 * hour }
spoilage_table["firearm-magazine"] = { spoil_result = "iron-plate", spoil_ticks = 30 * minute }
spoilage_table["piercing-rounds-magazine"] = { spoil_result = "firearm-magazine", spoil_ticks = 1 * hour }
spoilage_table["uranium-rounds-magazine"] = { spoil_result = "piercing-rounds-magazine", spoil_ticks = 2 * hour }
spoilage_table["cannon-shell"] = { spoil_result = "steel-plate", spoil_ticks = 2 * hour }
spoilage_table["uranium-cannon-shell"] = { spoil_result = "cannon-shell", spoil_ticks = 3 * hour }
spoilage_table["explosive-cannon-shell"] = { spoil_result = "explosives", spoil_ticks = 2 * hour }
spoilage_table["explosive-uranium-cannon-shell"] = { spoil_result = "explosive-cannon-shell", spoil_ticks = 3 * hour }
spoilage_table["rocket"] = { spoil_result = "explosives", spoil_ticks = 2 * hour }
spoilage_table["explosive-rocket"] = { spoil_result = "rocket", spoil_ticks = 2 * hour }
spoilage_table["shotgun-shell"] = { spoil_result = "copper-plate", spoil_ticks = 1 * hour }
spoilage_table["piercing-shotgun-shell"] = { spoil_result = "shotgun-shell", spoil_ticks = 1 * hour }
spoilage_table["artillery-shell"] = { spoil_result = "tungsten-plate", spoil_ticks = 10 * hour }
spoilage_table["capture-robot-rocket"] = { spoil_result = "flying-robot-frame", spoil_ticks = 5 * hour }
spoilage_table["tesla-ammo"] = { spoil_result = "supercapacitor", spoil_ticks = 4 * hour }
spoilage_table["railgun-ammo"] = { spoil_result = "explosives", spoil_ticks = 4 * hour }
spoilage_table["atomic-bomb"] = { spoil_result = "uranium-235", spoil_ticks = 8 * hour }

-- Armor
spoilage_table["light-armor"] = { spoil_result = "iron-plate", spoil_ticks = 1 * hour }
spoilage_table["heavy-armor"] = { spoil_result = "light-armor", spoil_ticks = 2 * hour }
spoilage_table["modular-armor"] = { spoil_result = "heavy-armor", spoil_ticks = 4 * hour }
spoilage_table["power-armor"] = { spoil_result = "modular-armor", spoil_ticks = 8 * hour }
spoilage_table["power-armor-mk2"] = { spoil_result = "power-armor", spoil_ticks = 16 * hour }
spoilage_table["mech-armor"] = { spoil_result = "power-armor-mk2", spoil_ticks = 32 * hour }

-- Turrets
spoilage_table["gun-turret"] = { spoil_result = "submachine-gun", spoil_ticks = 1 * hour }
spoilage_table["flamethrower-turret"] = { spoil_result = "flamethrower", spoil_ticks = 2 * hour }
spoilage_table["laser-turret"] = { spoil_result = "battery", spoil_ticks = 3 * hour }
spoilage_table["rocket-turret"] = { spoil_result = "rocket-launcher", spoil_ticks = 4 * hour }
spoilage_table["artillery-turret"] = { spoil_result = "tungsten-plate", spoil_ticks = 5 * hour }
spoilage_table["tesla-turret"] = { spoil_result = "teslagun", spoil_ticks = 6 * hour }
spoilage_table["railgun-turret"] = { spoil_result = "railgun", spoil_ticks = 10 * hour }

return spoilage_table
