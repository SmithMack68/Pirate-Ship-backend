class Ship < ActiveRecord::Base
    has_many :pirates

    validates :name, presence: true, uniqueness: true
end
