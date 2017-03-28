class AddImageToDragons < ActiveRecord::Migration[5.0]
  def change
    add_column :dragons, :image, :string
  end
end
