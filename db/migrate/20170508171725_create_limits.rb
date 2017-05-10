class CreateLimits < ActiveRecord::Migration[5.0]
  def change
    create_table :limits do |t|
      t.integer :limit_value
      t.references :meter, foreign_key: true

      t.timestamps
    end
  end
end
