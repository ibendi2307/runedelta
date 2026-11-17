local spell, super = Class(Spell, "setpink")

function spell:init()
    super.init(self)

    -- Display name
    self.name = "Pink SOUL"
    -- Name displayed when cast (optional)
    self.cast_name = "Pink SOUL"

    -- Battle description
    self.effect = "Reversed\nMovement"
    -- Menu description
    self.description = "A... different power.\nVertical controls are switched, and...?"

    -- TP cost
    self.cost = 10

    -- Target mode (ally, party, enemy, enemies, or none)
    self.target = "none"

    -- Tags that apply to this spell
    self.tags = {"soul"}
end

function spell:onCast(user, target)
    Game.battle:setSoul("pink")
    Game.battle:finishAction()
end


return spell