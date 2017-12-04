class Word < ApplicationRecord
  before_save :capitalize_fields

  def capitalize_fields
    self.title.capitalize!
    self.translation.capitalize!
  end

end
