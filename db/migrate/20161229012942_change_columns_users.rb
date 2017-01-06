class ChangeColumnsUsers < ActiveRecord::Migration
  def change
  	change_column_null :users, :username, false
		change_column_default :users, :username, '名無し'
  end
end
