class CreateGroceries < ActiveRecord::Migration
  def change
    create_table :groceries do |t|
      t.string :title
      t.string :description
      t.string :string
      t.integer :quantity

      t.timestamps
    end
  end
end
