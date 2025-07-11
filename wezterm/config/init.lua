local appearance = require('config.appearance')
local font = require('config.font')
local keybinds = require('config.keybinds')
local tabs = require('config.tabs')

local module = {}

local confs = {
    appearance,
    font,
    keybinds,
    tabs,
}

function module.apply_all(config)
    for _, c in ipairs(confs) do
        c.apply(config)
    end
end

return module
