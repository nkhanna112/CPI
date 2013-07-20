class CreateRegresses < ActiveRecord::Migration
  def change
    create_table :regresses do |t|
      t.string :name
      t.string :location
      t.integer :propensity

      t.timestamps
    end
  end
end
