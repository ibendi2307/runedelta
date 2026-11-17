---@class Encounter : Encounter
---@overload fun(...) : Encounter
local Encounter = Class("Encounter", true)

function Encounter:createSoul(x, y, color)
    if Game.battle.soulcolor == "red" then
        return Soul(x, y, color)
    elseif Game.battle.soulcolor == "blue" then
        return BlueSoul(x, y, color)
    elseif Game.battle.soulcolor == "pink" then
        return PinkSoul(x, y, color)

    elseif Game.battle.soulcolor == "burning" then
        return
    end
end

return Encounter