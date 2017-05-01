class CreateConsumptions < ActiveRecord::Migration[5.0]
  def change
    create_table :consumptions do |t|
      t.integer :value
      t.timestamp :date
      t.references :meter, foreign_key: true

      t.timestamps
    end
  end
end
