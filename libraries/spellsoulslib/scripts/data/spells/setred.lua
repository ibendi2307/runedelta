local spell, super = Class(Spell, "setred")

function spell:init()
    super.init(self)

    -- Display name
    self.name = "Red SOUL"
    -- Name displayed when cast (optional)
    self.cast_name = "Red SOUL"

    -- Battle description
    self.effect = "Free\nMovement"
    -- Menu description
    self.description = "Your own power.\nMove freely within the Battle Box."

    -- TP cost
    self.cost = 10

    -- Target mode (ally, party, enemy, enemies, or none)
    self.target = "none"

    -- Tags that apply to this spell
    self.tags = {"soul"}
end

function spell:onCast(user, target)
    Game.battle:setSoul("red")
    Game.battle:finishAction()
end


return spell
