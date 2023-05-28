class Income < ApplicationRecord
  belongs_to :user

  validates :income_amount, presence: true,
                    numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 9_999_999 }
end
