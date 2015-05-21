class CreateGgivings < ActiveRecord::Migration
  def change
    create_table :ggivings do |t|
      t.string :name
      t.string :phno
      t.string :bloodgroup
      t.string :place

      t.timestamps
    end
  end
end
