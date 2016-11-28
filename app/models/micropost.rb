class Micropost < ApplicationRecord
  # belongs_to :user
  # attr_accessor :content, :id
  # validates :user_id, presence: true
  validates :content, presence: true
  # validates :content, :length => { :maximum => 140 }
end
