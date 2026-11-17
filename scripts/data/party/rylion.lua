local character, super = Class(PartyMember, "rylion")

function character:init()
    super.init(self)

    self.name = "Rylion"

    self:setActor("rylionact")

    self.level = Game.chapter

    self.title = "" -- Add title (Either me Or Wicked)
    self.soul_priority = 1
    self.soul_color = {1, 0.48, 0}

    self.has_spells = true
    self.has_act = false

    self.has_xact = true

    self.xact_color = {1, 0.48, 0}
    self.xact_name = "R-Action"

    self.health = 100

    self.stats = {
        health = 100,
        attack = 12,
        defense = 2,
        magic = 2
    }

    self.max_stats = {
        health = 160,
        attack = 14,
        magic = 3
    }

    
end

return character