class DailyTask < ApplicationRecord
  before_save :default_settings
  belongs_to :user
  belongs_to :goal

  def default_settings
    self.priority ||= 'normal'
  end
end
