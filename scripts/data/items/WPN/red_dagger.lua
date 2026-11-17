local weapon, super = Class(Item,"red_dagger")

function weapon:init()
    super.init(self)

    self.name = "Red Dagger"

    self.type = "weapon"

    self.description = "it's an orange dagger"

    self.bonuses = {
        attack = 0,
        defense = 0,
        magic = 0
    }

    self.reactions = {

    } -- you can add reactions here like: susie = "Uhhh... Ok." ; and so on



end


return weapon