class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|

      t.string :movie_name,      null: false
      t.text :movie_content,     null: false
      t.integer :genre_id,       null: false
      t.string :video_top,      null: false

      t.timestamps
    end
  end
end
