# frozen_string_literal: true

class Trip < ApplicationRecord
  has_many :images, dependent: :destroy

  validates :title, presence: true
  validates :title, uniqueness: true
  validates :description, length: { maximum: 1000 }
end
