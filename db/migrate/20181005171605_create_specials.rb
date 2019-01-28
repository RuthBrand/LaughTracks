class CreateSpecials < ActiveRecord::Migration[5.2]
  def up
    create_table :specials do |t|
      t.text :name
      t.integer :run_time
      t.text :image_url
      t.integer :comedian_id
      t.timestamps null: false
    end
  end
end
