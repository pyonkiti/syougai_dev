class User < ApplicationRecord
    has_secure_password         # passwordをハッシュ化する
end
