local effect, super = Class(StatusCondition, "burning")

function effect:init()
    super.init(self)
end

function effect:onStatus(battler)
    battler.tick = 0
end

function effect:onActionsEnd(battler)

    Game.battle:swapSoul()
    
end

function effect:onUpdate(b)
    super.onUpdate(self)
    b.tick = b.tick + 1

    print(b.tick)

    if b.tick % 100 == 0 then
        b:hurt(1,true)
    end

    if b.tick == 2000 then
        b.tick = 0
    end
    

end


return effect