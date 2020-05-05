class User < ApplicationRecord


  validates :name,:address,:address_number,:phone,:sex,:age,            presence: true
  validates :name_kana, presence: true,
                        format: {
                          with: /\A[\p{katakana} ー－&&[^ -~｡-ﾟ]]+\z/,
                        }
end
