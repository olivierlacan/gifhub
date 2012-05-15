class CreateGifsTagsJoinTable < ActiveRecord::Migration
  def change
    create_table :gifs_tags, index: false do |t|
      t.integer :gif_id
      t.integer :tag_id
    end
  end
end
