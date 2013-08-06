class CreateMicroposts < ActiveRecord::Migration
  def change
    create_table :microposts do |t|
      t.string :content
      t.integer :user_id

      # adds created_at and updated_at
      t.timestamps
    end
    # multiple key index
    add_index :microposts, [:user_id, :created_at]
  end
end
