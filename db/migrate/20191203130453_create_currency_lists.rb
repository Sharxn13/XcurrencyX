class CreateCurrencyLists < ActiveRecord::Migration[6.0]
  def change
    create_table :currency_lists do |t|
      t.references :currency, null: false, foreign_key: true
      t.references :list, null: false, foreign_key: true
      t.string :name
      # Slug: part of the URL to identify the record
      t.string :slug
      t.string :symbol
      t.text :flagURL

      t.timestamps
    end
  end
end
