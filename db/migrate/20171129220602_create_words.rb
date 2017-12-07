class CreateWords < ActiveRecord::Migration[5.1]
  def change
    create_table :words do |t|
      t.string :title
      t.text :translation

      t.timestamps
    end

    add_index :words, :title, unique: true
  end
end
