class Movie < ApplicationRecord
  mount_uploader :video_top, VideoTopUploader

  validates :movie_name, presence: true
  validates :movie_content, presence: true
  validates :genre_id, presence: true
  validates :video_top, presence: true

  belongs_to :user
end
