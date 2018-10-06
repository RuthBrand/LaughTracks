class CreateComedians < ActiveRecord::Migration[5.2]
  def change
    create_table :comedians do |t|
      #what type of things you want in each column
      t.text :name
      t.text :city
      t.integer :age

      #i WANT a timestamp so this is a way to say that
      t.timestamps null: false
    end
  end
end
