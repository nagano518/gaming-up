class Comment < ApplicationRecord

  validates :comment_content, presence: true
  
  has_many :comments

end
