class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string :description, null: false
      t.float :value, null: false

      t.timestamps
    end
  end
end
