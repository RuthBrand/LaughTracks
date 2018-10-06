class CreateSpecials < ActiveRecord::Migration[5.2]
  def change
    create_table :specials do |t|
      t.text :name
      t.integer :run_time
      t.text :image_url
      t.integer :comedian_id
    end
  end
end
