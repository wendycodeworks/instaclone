# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :user

  has_many_attached :images, dependent: :destroy

  validates :images, presence: true
end
