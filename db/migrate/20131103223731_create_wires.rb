class CreateWires < ActiveRecord::Migration
  def change
    create_table :wires do |t|
      t.string :title
      t.string :time
      t.string :category

      t.timestamps
    end
  end
end
