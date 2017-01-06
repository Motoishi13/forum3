class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :detail
      t.integer :user_id, null: false
      t.integer :subject_id, null: false
      
      t.timestamps null: false
    end
  end
end
