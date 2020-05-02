class User < ApplicationRecord


  validates :name,:name_kana,:address,:address_number,:phone,:sex,:age,            presence: true
end
