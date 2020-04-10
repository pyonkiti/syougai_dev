class Task < ApplicationRecord

    # 必須入力チェック
    validates :enduser, presence: true          # エンドユーザー
    validates :taiou_cd, presence: true         # 対応者コード

    # 文字数入力チェック
    validates :enduser, length: { maximum: 50}  # エンドユーザー
    validates :motouke, length: { maximum: 50}  # 元請け

    # カンマエラーチェック
    validates :vali_not_including_comma         # エンドユーザー

    private

    def vali_not_including_comma
        errors.add(:enduser, 'カンマを含める事はできません') if enduser&.include?(',')
    end
end
