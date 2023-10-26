class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :uid
      t.string :pass
      t.integer :age #もしここでテーブルを書き換えたら一度dropしてもう一度migrateする

      t.timestamps
    end
  end
end
