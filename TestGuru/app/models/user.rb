class User < ApplicationRecord
  def tests_by_level(level)
    TestResult.find_by(level: level, user_id: self.id)
  end
end
