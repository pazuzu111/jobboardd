class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :company
      t.text :about
      t.string :url

      t.timestamps
    end
  end
end
