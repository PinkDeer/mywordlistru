class Word < ApplicationRecord

  # self.primary_key = 'title'

  validates :title, :translation, presence: true
  validates_format_of :title, with: /[a-zA-Z]/i, on: :create

  before_save :capitalize_fields

  def capitalize_fields
    self.title.capitalize!
    self.translation.capitalize!
  end

end
