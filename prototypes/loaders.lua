ei_loaders_lib = require("lib/lib-data")

--====================================================================================================
--1x1 LOADERS
--====================================================================================================

data:extend({
    {
        name = "ei_loader",
        type = "item",
        icon = ei_loaders_item_path.."loader.png",
        icon_size = 64,
        icon_mipmaps = 4,
        subgroup = "belt",
        order = "h[ei_loader]_a",
        place_result = "ei_loader",
        stack_size = 50
    },
    {
        name = "ei_fast-loader",
        type = "item",
        icon = ei_loaders_item_path.."fast-loader.png",
        icon_size = 64,
        icon_mipmaps = 4,
        subgroup = "belt",
        order = "h[ei_loader]_b",
        place_result = "ei_fast-loader",
        stack_size = 50
    },
    {
        name = "ei_express-loader",
        type = "item",
        icon = ei_loaders_item_path.."express-loader.png",
        icon_size = 64,
        icon_mipmaps = 4,
        subgroup = "belt",
        order = "h[ei_loader]_c",
        place_result = "ei_express-loader",
        stack_size = 50
    },
    {
        name = "ei_loader",
        type = "recipe",
        category = "crafting",
        energy_required = 2,
        ingredients =
        {
            {type="item", name="transport-belt", amount=4},
            {type="item", name="electronic-circuit", amount=6},
            {type="item", name="iron-plate", amount=6},
        },
        results = {{type="item", name="ei_loader", amount=1}},
        enabled = false,
        always_show_made_in = true,
        main_product = "ei_loader",
    },
    {
        name = "ei_fast-loader",
        type = "recipe",
        category = "crafting",
        energy_required = 3,
        ingredients =
        {
            {type="item", name="ei_loader", amount=1},
            {type="item", name="electronic-circuit", amount=20},
            {type="item", name="iron-gear-wheel", amount=20},
        },
        results = {{type="item", name="ei_fast-loader", amount=1}},
        enabled = false,
        always_show_made_in = true,
        main_product = "ei_fast-loader",
    },
    {
        name = "ei_express-loader",
        type = "recipe",
        category = "crafting",
        energy_required = 4,
        ingredients =
        {
            {type="item", name="ei_fast-loader", amount=1},
            {type="item", name="advanced-circuit", amount=20},
            {type="item", name="iron-gear-wheel", amount=40},
        },
        results = {{type="item", name="ei_express-loader", amount=1}},
        enabled = false,
        always_show_made_in = true,
        main_product = "ei_express-loader",
    },
})

-- add entities

local belt = data.raw["transport-belt"]["transport-belt"]
local fast_belt = data.raw["transport-belt"]["fast-transport-belt"]
local express_belt = data.raw["transport-belt"]["express-transport-belt"]

ei_loaders_lib.make_loader(nil, "ei_fast-loader", belt.belt_animation_set, belt.speed)
ei_loaders_lib.make_loader("fast", "ei_express-loader", fast_belt.belt_animation_set, fast_belt.speed)
ei_loaders_lib.make_loader("express", nil, express_belt.belt_animation_set, express_belt.speed)