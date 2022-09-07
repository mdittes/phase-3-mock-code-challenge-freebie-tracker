class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def received_one?(item_name)
        self.freebies.any? do |freebie|
            freebie.item_name == item_name
        #self.freebies.where(item_name: item_name) != []
        #self.freebies.exists?(item_name: item_name)
        end
    end

    def give_away(dev, freebie)
        freebie.update(dev: dev) unless freebie.dev != self
        #if freebie.dev_id == self.id
            #freebie.update(dev_id: dev.id)
        #else
            #false
        #end
    end

end
