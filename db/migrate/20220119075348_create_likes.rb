class CreateLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :likes do |t|
      # t.references :author, foreign_key: { to_table: 'users' }, null: false
      # t.references :post, foreign_key: true, null: false
      t.references :author, null: false, foreign_key: true
      t.references :post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
