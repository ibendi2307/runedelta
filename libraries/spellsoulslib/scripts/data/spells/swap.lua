local spell, super = Class(Spell, "swap")

function spell:init()
    super.init(self)

    -- Display name
    self.name = "SOUL Swap"
    -- Name displayed when cast (optional)
    self.cast_name = "SOUL Swap!"

    -- Battle description
    self.effect = "Swap between\nRed and Pink"
    -- Menu description
    self.description = "Toggles your SOUL color between either Red or Pink."

    -- TP cost
    self.cost = 10

    -- Target mode (ally, party, enemy, enemies, or none)
    self.target = "none"

    -- Tags that apply to this spell
    self.tags = {"soul"}
end

function spell:onCast(user, target)
    if Game.battle.soulcolor == "red" then
        Game.battle:setSoul("pink")
    elseif Game.battle.soulcolor == "pink" then
        Game.battle:setSoul("red")
    else
    end
    Game.battle:finishAction()
end

return spell
