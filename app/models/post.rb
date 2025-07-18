# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :category
  has_many :comments, class_name: 'PostComment', dependent: :destroy

  belongs_to :creator,
             inverse_of: :posts,
             class_name: 'User',
             foreign_key: :creator

  validates :title, :body, presence: true
  validates_associated :category
end
