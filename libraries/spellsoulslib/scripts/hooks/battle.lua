---@class Battle : Battle
---@overload fun(...) : Battle
local Battle, super = Class("Battle", true)

function Battle:init()
    super.init(self)

    self.soulcolor = "red"
end

function Battle:setSoul(color)
    -- Call outside of action! (Soul not out)
    if self.soul then
        self.soul:remove()
    end
    self.soulcolor = color
end

return Battle