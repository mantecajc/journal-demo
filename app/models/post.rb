class Post < ApplicationRecord
  belongs_to :category

  before_save :calculate_total

  def calculate_total
    if phone_contact == nil && social_media == nil
      sum_value = number
    elsif phone_contact == nil && number == nil
      sum_value = social_media
    elsif number == nil && social_media == nil
      sum_value = phone_contact
    elsif number == nil
      sum_value = social_media + phone_contact
    elsif social_media == nil
      sum_value = number + phone_contact
    elsif phone_contact == nil
      sum_value = number + social_media
    else
      sum_value = number + social_media + phone_contact
    end

    self.total = sum_value
  end
end