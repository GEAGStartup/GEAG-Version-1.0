class CreateMeters < ActiveRecord::Migration[5.0]
  def change
    create_table :meters do |t|
      t.integer :value
      t.references :type, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
