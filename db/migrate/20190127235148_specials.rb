class Specials < ActiveRecord::Migration[5.2]
  def change
    create_table(:specials) do |t|
      t.column :name, :string, limit: 60
      t.column :run_time, :integer
      t.column :image_url, :string
      t.integer :comedian_id, :integer
      t.timestamps null: false
    end
  end
end
