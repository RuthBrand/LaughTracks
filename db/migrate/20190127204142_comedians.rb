class Comedians < ActiveRecord::Migration[5.2]
  def change
   create_table(:comedians) do |t|
     t.column :name, :string, limit:60
     t.column :age, :integer
     t.column :city, :string, limit:60
    end
  end
end
