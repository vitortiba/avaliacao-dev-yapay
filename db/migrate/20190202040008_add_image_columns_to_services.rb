class AddImageColumnsToServices < ActiveRecord::Migration[5.2]
  def up
    add_attachment :services, :image
  end

  def down
    remove_attachment :services, :image
  end
end
