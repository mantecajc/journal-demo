class Post < ApplicationRecord
  belongs_to :category

  before_save :calculate_total

  def calculate_total
    sum_value = number + social_media + phone_contact
    self.total = sum_value
  end
end
