class RenameColumnNPasswordConfirmationToPasswordConfirm < ActiveRecord::Migration
  def change
  	rename_column :users, :password_confirmation, :password_confirm
  end
end
