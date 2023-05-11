class Like < ApplicationRecord
  belongs_to :user
  belongs_to :likeable, polymorphic: true
<<<<<<< HEAD
=======

  validates :user_id, uniqueness: { scope: :likeable_id, message: "has already liked this item" }
>>>>>>> Ajout de tout
end
