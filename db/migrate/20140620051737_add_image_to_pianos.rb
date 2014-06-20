class AddImageToPianos < ActiveRecord::Migration
  def change
    add_column :pianos, :image, :string
  end
end
