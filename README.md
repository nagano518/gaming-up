# README

# テーブル設計

## users テーブル
| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |
| content            | text   | null: false |

## アソシエーション
has_many :movies
has_many :comments


## movies テーブル
| Column             | Type       | Options                        |
| ------             | --------   | -----------                    |
| movie_name         | string     | null: false                    |
| movie_content      | text       | null: false                    |
| movie              |            | null: false                    |
| user               | references | null: false, foreign_key: true |
| genre_id           | integer    | null: false                    |

## アソシエーション
belong_to :user
has_many  :comments
## ActiveHashを利用する
extend ActiveHash::Associations::ActiveRecordExtensions
belongs_to :genre


## comments テーブル
| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | test       | null: false                    |
| user    | references | null: false, foreign_key: true |
| room    | references | null: false, foreign_key: true |

## アソシエーション
belong_to :user
belong_to :movie


## genreのモデルに下記を記載
## ActiveHashを利用
include ActiveHash::Associations
has_many :movies