class CreateTijds < ActiveRecord::Migration
  def change
    create_table :tijds do |t|
      t.belongs_to :machine, index: true
      t.string :end_datetime

      t.timestamps null: false
    end
  end
end
