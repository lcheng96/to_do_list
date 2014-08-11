class Item < ActiveRecord::Base
  validates :event, presence: true, length: {minimum: 5, maximum: 80}
  validates :time, presence: true
  validates :description, presence: true, length: {minimum: 5, maximum: 140}
end
