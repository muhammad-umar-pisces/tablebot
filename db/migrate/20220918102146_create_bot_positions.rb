class CreateBotPositions < ActiveRecord::Migration[6.1]
  def change
    create_table :bot_positions do |t|
      t.integer :x_axis
      t.integer :y_axis
      t.integer :robot_id
      t.timestamps
    end
  end
end
