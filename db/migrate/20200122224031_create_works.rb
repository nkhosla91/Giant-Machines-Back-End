class CreateWorks < ActiveRecord::Migration[6.0]
  def change
    create_table :works do |t|
      t.date :date
      t.string :client
      t.string :project
      t.string :projectCode
      t.decimal :hours, precision: 10, scale: 2
      t.decimal :hoursRounded, precision: 10, scale: 1
      t.string :billable
      t.string :firstName
      t.string :lastName
      t.integer :billableRate
      t.timestamps
    end
  end
end
