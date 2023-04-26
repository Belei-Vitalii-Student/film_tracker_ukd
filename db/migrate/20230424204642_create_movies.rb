class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :director
      t.integer :year
      t.integer :duration
      t.text :description

      t.timestamps
    end
  end
end
