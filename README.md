# README
・デプロイ先URL
　https://gaming-up.onrender.com
・テストアカウント
　メールアドレス：green@gmail.com
　パスワード：test518
・作成した背景
　1.コロナ禍を機に趣味としてゲームが流行している
　2.男性だけでなく女性も幅広くユーザーが増えている
　3.単なる遊びではなく、eSportsや動画配信など競技性が上がってきている
　4.実際にコーチングという有料のスクールなども存在している
　→無料かつ利用しやすく、多くの人にコメントをもらえるようなアプリケーションを開発しようと考えました。
・工夫したポイント
　写真投稿やURL記入ではなく、動画投稿機能を追加
　今後は、管理者機能やデータベース増築を予定しております。


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
| video_top          | string     | null: false                    |
| user               | references | null: false, foreign_key: true |
| genre_id           | integer    | null: false                    |

## アソシエーション
belong_to :user
has_many  :comments
## ActiveHashを利用する
extend ActiveHash::Associations::ActiveRecordExtensions
belongs_to :genre


## comments テーブル
| Column               | Type       | Options                        |
| ---------------      | ---------- | ------------------------------ |
| comment_content      | text       | null: false                    |
| user                 | references | null: false, foreign_key: true |
| movie                | references | null: false, foreign_key: true |

## アソシエーション
belong_to :user
belong_to :movie


## genreのモデルに下記を記載
## ActiveHashを利用
include ActiveHash::Associations
has_many :movies