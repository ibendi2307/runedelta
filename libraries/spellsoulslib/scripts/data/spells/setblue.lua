local spell, super = Class(Spell, "setblue")

function spell:init()
    super.init(self)

    -- Display name
    self.name = "Blue SOUL"
    -- Name displayed when cast (optional)
    self.cast_name = "Blue SOUL"

    -- Battle description
    self.effect = "Gravitational\nMovement"
    -- Menu description
    self.description = "The power of INTEGRITY.\nJump through the air."

    -- TP cost
    self.cost = 10

    -- Target mode (ally, party, enemy, enemies, or none)
    self.target = "none"

    -- Tags that apply to this spell
    self.tags = {"soul"}
end

function spell:onCast(user, target)
    Game.battle:setSoul("blue")
    Game.battle:finishAction()
end


return spell