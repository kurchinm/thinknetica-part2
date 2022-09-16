class Test < ApplicationRecord
  class << self
    def test_by_category(category_name)
      Test.joins('JOIN categories ON tests.category_id = categories.id').where(categories: {name: category_name}).order(name: :desc).pluck(:title)
    end
  end
end
