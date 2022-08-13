class Transaction < ApplicationRecord
  belongs_to :user
  belongs_to :category

  validates :name, presence: true
  validates :amount, presence: true

  def total_amount
    category.sum('amount')
  end
end
