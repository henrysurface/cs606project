class CreateSuits < ActiveRecord::Migration
  def change
    create_table :suits do |t|
      t.string :appid
      t.string :gender
      t.string :size
      t.string :description
      t.timestamps
    end
  end
end
