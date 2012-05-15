class CreateGifs < ActiveRecord::Migration
  def change
    create_table :gifs do |t|
      t.string :filename
      t.string :source_url

      t.timestamps
    end
  end
end
