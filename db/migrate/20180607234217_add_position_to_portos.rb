class AddPositionToPortos < ActiveRecord::Migration[5.1]
  def change
    add_column :portos, :position, :integer
  end
end
