class Test < ApplicationRecord
  has_many :questions, dependent: :destroy
  has_many :test_results, dependent: :destroy
  has_many :users, through: :test_results
  belongs_to :category
  belongs_to :athor
  class << self
    def test_by_category(category_name)
      joins('JOIN categories ON tests.category_id = categories.id')
        .where(categories: {name: category_name})
        .order(name: :desc)
        .pluck(:title)
    end
  end
end
