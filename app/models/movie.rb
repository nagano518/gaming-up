class Movie < ApplicationRecord
  mount_uploader :video_top, VideoUploader

  validates :movie_name, presence: true
  validates :movie_content, presence: true
  validates :genre_id, presence: true
  validates :video_top, presence: true
  validates :user, presence: true, foreign_key: true

end
