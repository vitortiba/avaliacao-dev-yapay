class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.belongs_to :service, index: true
      t.string :name
      t.string :email
      t.datetime :date

      t.timestamps
    end
  end
end
