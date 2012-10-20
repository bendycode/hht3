class InheritedSchema < ActiveRecord::Migration
  def up
    create_table "venue_type_details", :force => true do |t|
      t.string   "detail"
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    create_table "venues", :force => true do |t|
      t.string   "name"
      t.string   "venue_type"
      t.string   "address1"
      t.string   "address2"
      t.string   "city"
      t.string   "state"
      t.string   "zip"
      t.string   "phone"
      t.text     "description"
      t.string   "discount"
      t.text     "bike_tips"
      t.string   "restrictions"
      t.datetime "created_at"
      t.datetime "updated_at"
      t.string   "url"
      t.decimal  "lat",               :precision => 18, :scale => 9
      t.decimal  "lng",               :precision => 18, :scale => 9
      t.boolean  "alcohol"
      t.string   "venue_type_detail"
    end
  end

  def down
    drop_table "venues"
    drop_table "venue_type_details"
  end
end
