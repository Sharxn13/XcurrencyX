class CreateCurrencies < ActiveRecord::Migration[6.0]
  def change
    create_table :currencies do |t|
      t.string :name
      t.string :slug
      t.string :symbol
      t.text :flagURL
    end
  end
end
