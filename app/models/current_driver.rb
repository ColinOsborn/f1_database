class CurrentDriver < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :team, presence: true
end
