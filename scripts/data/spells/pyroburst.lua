local spell, super = Class(Spell, "pyroburst")

function spell:init()
    super.init(self)
    
    self.name = "PyroBurst"

    self.cast_name = nil
    self.cost = 32
    self.tags = {"BURNING"}
    self.target = "ally"
    

end

function spell:onCast(u,t)
    t:inflictStatus("burning", -1)
end

return spell