class Expenditure < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :user

  validates :category_id, numericality: { other_than: 1 } 
  validates :expenditure_amount, presence: true,
                    numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 9_999_999 }
end
