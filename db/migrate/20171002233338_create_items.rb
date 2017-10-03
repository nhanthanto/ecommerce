class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.references :user, foreign_key: true
      t.references :cart, foreign_key: true
      t.string :name
      t.string :des
      t.integer :price

      t.timestamps
    end
  end
end
