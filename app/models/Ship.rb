class Ship < ActiveRecord::Base
    has_many :pirates, dependent: :destroy

    validates :name, presence: true, uniqueness: true
end
