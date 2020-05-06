class Symptom < ApplicationRecord

  validates :name,:content,:solution,            presence: true

  belong_to :user
end
