class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments, :text, &:timestamps
  end
end
