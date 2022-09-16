class User < ApplicationRecord
  def tests_by_level(level)
    Tests.joins('JOIN test_result ON test_result.test_id = tests.id')
          .where(level: level, test_results: {user_id: self.id})
  end
end
