class ChangeTasksDefault < ActiveRecord::Migration[5.2]
    
    # デフォルト値をつける
    def up
        change_column_default :tasks, :idou, 0
        change_column_default :tasks, :del_flg, 0
    end
    
    # デフォルト値を削除
    def down
        change_column_default :tasks, :idou, nil
        change_column_default :tasks, :del_flg, nil
    end
end
