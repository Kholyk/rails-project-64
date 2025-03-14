# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :category

  belongs_to :creator,
             inverse_of: :posts,
             class_name: 'User',
             foreign_key: :creator

  validates :title, :body, presence: true
  validates_associated :category
end
