class CreateTakings < ActiveRecord::Migration
  def change
    create_table :takings,:primary_key => :emp_id do |t|
      t.string :name
      t.string :phno
      t.string :bloodgroup
      t.string :place
      t.string :msg

      t.timestamps
    end
    change_column :takings, :emp_id, :string
  end
end
