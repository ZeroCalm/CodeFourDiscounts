class AddCountyToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :county, :string
  end
end
