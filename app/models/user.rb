class User < ApplicationRecord
  validates :username, presence: true, length: { in: 6..20 }

end
