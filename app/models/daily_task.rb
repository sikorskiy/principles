class DailyTask < ApplicationRecord
  before_save :default_settings
  belongs_to :user

  def default_settings
    self.priority ||= 'normal'
  end
end
