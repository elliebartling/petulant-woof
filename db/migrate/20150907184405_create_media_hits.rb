class CreateMediaHits < ActiveRecord::Migration
  def change
    create_table :media_hits do |t|
      t.string :title
      t.text :text
      t.string :author

      t.timestamps null: false
    end
  end
end
