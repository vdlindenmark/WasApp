class CreateMachines < ActiveRecord::Migration
  def change
    create_table :machines do |t|
      t.integer :kind
      t.integer :machine_id
      t.string :name
    end
  end
end
