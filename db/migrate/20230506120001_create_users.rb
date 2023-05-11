class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.text :description
      t.string :email
<<<<<<< HEAD
      t.integer :age
      t.references :city, index: true
=======
      t.date :date_of_birth
      t.string :gender
      t.references :city, index: true
      t.string :password_digest
>>>>>>> Ajout de tout

      t.timestamps
    end
  end
end
