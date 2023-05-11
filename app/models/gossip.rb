class Gossip < ApplicationRecord
  belongs_to :user
<<<<<<< HEAD
  has_many :gossip_tags
  has_many :tags, through: :gossip_tags
  has_many :comments, as: :commentable
  has_many :likes, as: :likeable

  validates :title, presence: true, uniqueness: true, length: { minimum: 3, maximum: 34 } #Je sais que c'est 14 mais c'est galère pour la seed
  validates :content, presence: true, uniqueness: true, length: { minimum: 10, maximum: 1000 }
=======
  has_many :gossip_tags, dependent: :destroy
  has_many :tags, through: :gossip_tags
  has_many :comments, dependent: :destroy
  has_many :likes, as: :likeable, dependent: :destroy

  validates :title, presence: true, uniqueness: true, length: { minimum: 3, maximum: 100 } #Je sais que c'est 14 mais c'est galère pour la seed
  validates :content, presence: true, uniqueness: true, length: { minimum: 3, maximum: 1000 }

  def comments_count
    comments.count
  end
>>>>>>> Ajout de tout
end
