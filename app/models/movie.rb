class Movie < ApplicationRecord
  mount_uploader :video_top, VideoTopUploader

  validates :movie_name, presence: true
  validates :movie_content, presence: true
  validates :genre_id, numericality: { other_than: 1 , message: "can't be blank"}
  validates :video_top, presence: true

  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to :genre
end
