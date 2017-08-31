class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.belongs_to :post #t.integer :post_id 랑 같은 액션!
      t.string :content
      t.timestamps null: false
    end
  end
end
