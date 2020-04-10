class User < ApplicationRecord
    has_secure_password         # passwordをハッシュ化する

    validates :name, presence: true                         # 名前
    validates :name_id, presence: true, uniqueness: true    # ログインID
end
