class CreateOpinions < ActiveRecord::Migration[5.1]
  def change
    create_table :opinions do |t|
      t.string :nick
      t.text :review
      t.integer :rating

      t.timestamps
    end
  end
end
