class CreateContents < ActiveRecord::Migration[6.0]
  def change
    create_table :contents do |t|
      t.references :user,          nill:false,foreign_key:true
      t.string     :restaurant,    nill:false
      t.integer    :genre_id,      nill:false
      t.integer    :city_id,       nill:false
      t.integer    :town_id,       nill:false
      t.text       :description
      t.string     :house_number,  nill:false
      t.integer    :price_id,      nill:false
      t.timestamps
    end
  end
end
