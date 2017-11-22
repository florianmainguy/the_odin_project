class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.references :post
      t.references :user
      t.text :body, :null => false

      t.timestamps
    end
  end
end
