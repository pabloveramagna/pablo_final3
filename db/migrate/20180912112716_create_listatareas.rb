class CreateListatareas < ActiveRecord::Migration[5.2]
  def change
    create_table :listatareas do |t|
      t.string :nombre
      t.date :desde
      t.date :hasta
      t.string :responsable
      t.boolean :realizado
      t.string :observacion

      t.timestamps
    end
  end
end
