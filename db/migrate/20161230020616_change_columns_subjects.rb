class ChangeColumnsSubjects < ActiveRecord::Migration
  def change
  	change_column_null :subjects, :title, false
  	change_column_null :subjects, :user_id, false
  end
end
