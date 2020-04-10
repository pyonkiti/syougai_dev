class ChangeTasksLimit < ActiveRecord::Migration[5.2]

    # カラムの長さを指定
    def up
        change_column :tasks, :enduser, :string, limit: 50
        change_column :tasks, :motouke, :string, limit: 50
    end

    def down
        change_column :tasks, :enduser, :string
        change_column :tasks, :motouke, :string
    end
end
