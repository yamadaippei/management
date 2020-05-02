class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|

      t.string  :name,                         null: false
      t.string  :name_kana,                    null: false
      t.string  :address,                      null: false
      t.integer :address_number,               null: false
      t.integer :phone,                        null: false
      t.string  :sex,                          null: false
      t.integer :age,                          null: false
      t.timestamps
    end
  end
end
