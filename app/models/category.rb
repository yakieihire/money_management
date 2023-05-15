class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '給料' },
    { id: 3, name: 'ギャンブル' },
    { id: 7, name: 'その他' },
  ]
  include ActiveHash::Associations
  has_many :incomes
end