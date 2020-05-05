class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|

      t.string  :name,                         null: false
      t.string  :name_kana,                    null: false
      t.string  :address,                      null: false
      t.integer :address_number,  limit: 8,    null: false
      t.integer :phone,           limit: 8,    null: false
      t.string  :sex,                          null: false
      t.integer :age,                          null: false
      t.timestamps
    end
  end
end
