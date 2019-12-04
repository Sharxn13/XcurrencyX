class CreateLists < ActiveRecord::Migration[6.0]
  def change
    create_table :lists do |t|
      t.string :name
      t.integer :fcurrency
      t.integer :currency
      t.timestamps
    end
  end
end
