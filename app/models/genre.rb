class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'アクションゲーム' },
    { id: 3, name: 'シューティングゲーム' },
    { id: 4, name: 'レーシングゲーム' },
    { id: 5, name: 'アドベンチャーゲーム' },
    { id: 6, name: 'ロールプレイングゲーム' },
    { id: 7, name: 'パズルゲーム' },
    { id: 8, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :movies
  
  end