class User < ApplicationRecord
  # バリデーション
  # アカウントが存在しているか、大文字と小文字を区別しない
  validates :account, presence: true, uniqueness: { case_sensitive: false }
  has_many :articles
end
