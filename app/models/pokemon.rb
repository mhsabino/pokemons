class Pokemon < ApplicationRecord

  enum poke_type: { fire: 1, water: 2, grass: 3 }

  validates_presence_of :name, :poke_type

end
