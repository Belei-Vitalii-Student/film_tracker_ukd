class CreateStars < ActiveRecord::Migration[7.0]
  def change
    create_table :stars do |t|
      t.string :name
      t.integer :age
      t.timestamp :birthday

      t.timestamps
    end
  end
end
