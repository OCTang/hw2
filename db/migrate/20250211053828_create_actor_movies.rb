class CreateActorMovies < ActiveRecord::Migration[7.1]
  def change
    create_table :actor_movies do |t|
      t.references :actor, foreign_key: true
      t.references :movie, foreign_key: true
      t.string :character

      t.timestamps
    end
  end
end
