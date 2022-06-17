class Pirate < ActiveRecord::Base 
    belongs_to :ship 

    validates :name, presence: true
end
