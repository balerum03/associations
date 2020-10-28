module ApplicationHelper
  def log_or_not
    log_status = []
    if logged_in?
      log_status [0] = link_to 'Log Out', logout_path, method: :delete
    else
      log_status [0] = link_to 'Log in', '/login'
      log_status [1] = link_to 'Create User', new_user_path
    end
    log_status
  end

  def log_for_event
    log_status = []
    if logged_in?
      log_status [0] = link_to 'New event', new_event_path
      log_status [1] = link_to 'View all events', events_path
    else
      log_status [0] = link_to 'View all events', events_path
    end
    log_status
  end
end
