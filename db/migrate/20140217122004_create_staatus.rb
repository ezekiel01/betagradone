class CreateStaatus < ActiveRecord::Migration
  def change
    create_table :staatus do |t|
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
