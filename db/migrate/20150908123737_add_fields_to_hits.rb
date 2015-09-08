class AddFieldsToHits < ActiveRecord::Migration
  def change
  	add_column :media_hits, :outlet, :string
  	add_column :media_hits, :date, :DateTime
  	add_column :media_hits, :impressions, :decimal
  end
end
