class CreateLimites < ActiveRecord::Migration[5.0]
  def change
    create_table :limites do |t|
      t.integer :value
      t.references :meter, foreign_key: true

      t.timestamps
    end
  end
end
