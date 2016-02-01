class AddKanriToUsers < ActiveRecord::Migration
  def change
    add_column :users, :kanri, :string
  end
end