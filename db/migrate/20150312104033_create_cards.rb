class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :handle
      t.string :bio
      t.string :avatar

      t.timestamps null: false
    end
  end
end
