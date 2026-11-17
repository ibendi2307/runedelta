local spell, super = Class(Spell, "soulspell_temp")

function spell:init()
    super.init(self)

    -- Display name
    self.name = "SOUL Cycle"
    -- Name displayed when cast (optional)
    self.cast_name = "SOUL Cycle!"

    -- Battle description
    self.effect = "Change SOUL\nTo Next"
    -- Menu description
    self.description = "Change your soul,\nChange your life."

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
        Game.battle:setSoul("blue")
    else
        Game.battle:setSoul("red")
    end
    Game.battle:finishAction()
end

return spell
