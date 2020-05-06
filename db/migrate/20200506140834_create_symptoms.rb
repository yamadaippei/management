class CreateSymptoms < ActiveRecord::Migration[5.2]
  def change
    create_table :symptoms do |t|

      t.string :name,          null: false
      t.string :content,       null: false
      t.string :solution,      null: false
      t.timestamps
    end
  end
end
