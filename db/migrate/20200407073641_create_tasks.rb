class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.integer :dantai_kbn
      t.string :enduser
      t.string :motouke
      t.text :naiyou
      t.string :syubetu_kbn
      t.date :renraku_d
      t.time :renraku_t
      t.date :sagyou_d
      t.float :idou
      t.integer :taiou_cd
      t.integer :del_flg

      t.timestamps
    end
  end
end
