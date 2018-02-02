class CreateExperiments < ActiveRecord::Migration[5.1]
  def change
    create_table :experiments do |t|
      t.string :name
      t.text :description
      t.boolean :completed, default: true# default completed to false

      t.timestamps
    end
  end
end
