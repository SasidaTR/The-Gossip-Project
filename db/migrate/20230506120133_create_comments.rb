class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.text :content
      t.references :user, null: false, foreign_key: true
      t.references :gossip, null: false, foreign_key: true
<<<<<<< HEAD
      t.references :commentable, polymorphic: true, null: false
=======
>>>>>>> Ajout de tout

      t.timestamps
    end
  end
end
