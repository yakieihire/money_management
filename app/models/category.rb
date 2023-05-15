class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '水道代' },
    { id: 3, name: '光熱費' },
    { id: 4, name: '食費' },
    { id: 5, name: '日用品' },
    { id: 6, name: 'カード払い' },
    { id: 7, name: 'その他' },
  ]
  include ActiveHash::Associations
  has_many :incomes
end