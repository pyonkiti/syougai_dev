class AddIndexToTasks < ActiveRecord::Migration[5.2]
    # インデックスを追加
    def change
        add_index :tasks,[:dantai_kbn, :enduser]
        add_index :tasks, :motouke
        add_index :tasks, :renraku_d
        add_index :tasks, :sagyou_d
        add_index :tasks, :taiou_cd
    end
end
