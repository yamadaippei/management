class User < ApplicationRecord

  has_many :symptoms

  validates :address,:sex,:age,            presence: true
  validates :name_kana, presence: true,
                        format: {
                          with: /\A[\p{katakana} ー－&&[^ -~｡-ﾟ]]+\z/,
                        }
  validates :name, presence: true,
                        format: {
                          with: /\A[ぁ-んァ-ン一-龥]/,
                        }
  VALID_PHONE_REGEX = /\A\d{10}$|^\d{11}\z/
  validates :phone, presence: true, 
                    format: { 
                      with: VALID_PHONE_REGEX
                     }
  validates :address_number, presence: true,
                     format: {
                       with: /\A\d{7}\z/,
                     }
                      end