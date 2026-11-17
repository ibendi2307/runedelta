local spell, super = Class(Spell, "randomize")

function spell:init()
    super.init(self)

    -- Display name
    self.name = "Random SOUL"
    -- Name displayed when cast (optional)
    self.cast_name = "Random SOUL"

    -- Battle description
    self.effect = "Randomize\nSOUL Color"
    -- Menu description
    self.description = "It could be any power.\nRandomly pick a SOUL Color for the next turn."

    -- TP cost
    self.cost = 10

    -- Target mode (ally, party, enemy, enemies, or none)
    self.target = "none"

    -- Tags that apply to this spell
    self.tags = {"soul"}
end

function spell:onCast(user, target)
    rng = love.math.random(3)
    if rng == 1 then
        Game.battle:setSoul("red")
    elseif rng == 2 then
        Game.battle:setSoul("pink")
    elseif rng == 3 then
        Game.battle:setSoul("blue")
    end
    Game.battle:finishAction()
end


return spell
