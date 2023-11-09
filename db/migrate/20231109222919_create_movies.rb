class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.integer :tmdb_id
      t.string :poster_path
      t.string :backdrop_path
      t.string :title
      t.string :release_date
      t.integer :average_rating
      t.string :overview
      t.string :tagline

      t.timestamps
    end
  end
end
