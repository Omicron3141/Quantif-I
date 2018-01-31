class CreateDatapoints < ActiveRecord::Migration[5.1]
  def change
    create_table :datapoints do |t|
      t.numeric :value
      t.datetime :measured_at
      t.references :experiment, foreign_key: true

      t.timestamps
    end
  end
end
