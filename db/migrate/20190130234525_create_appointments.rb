class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.belongs_to :service, index: true, null: false
      t.string :name, null: false
      t.string :email, null: false
      t.string :contact, null: false
      t.datetime :date, null: false

      t.timestamps
    end
  end
end
