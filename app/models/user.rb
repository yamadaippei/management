class User < ApplicationRecord


  validates :address,:phone,:sex,:age,            presence: true
  validates :name_kana, presence: true,
                        format: {
                          with: /\A[\p{katakana} ー－&&[^ -~｡-ﾟ]]+\z/,
                        }
  validates :name, presence: true,
                        format: {
                          with: /\A[ぁ-んァ-ン一-龥]/,
                        }

                        
                      end