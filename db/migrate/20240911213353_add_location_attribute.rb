class AddLocationAttribute < ActiveRecord::Migration[7.1]
  def change
    add_column :products, :location, :string
  end
end
