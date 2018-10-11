module ApplicationHelper
  def is_day_saved?
    SuccessNote.where(day: Date.today, user: current_user).count > 2 && FailNote.where(day: Date.today, user: current_user).count > 2 && Rule.where(day: Date.today, user: current_user).count > 0
  end
end
