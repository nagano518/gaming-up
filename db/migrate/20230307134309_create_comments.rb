class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :comment_content,      null: false
      t.references :user,     null: false, foreign_key: :true
      t.references :movie,       null: false, foreign_key: :true
      t.timestamps
    end
  end
end