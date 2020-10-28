module UsersHelper
  def current_user_log
    if logged_in?
      current_user.username
    else
      'you are not logged in'
    end
  end

  def empty_table
    if @user.own_events.empty?
      'There are no events jet'
    else
      render 'own_table'
    end
  end

  def empty_attending_table
    if @user.events.empty?
      'There are no events register jet'
    else
      render 'attend_events'
    end
  end

  def empty_attended
    if @user.events.previous.empty?
      'No events have been attended'
    else
      render 'attended'
    end
  end

  def empty_today
    if @user.events.today.empty?
      'There are no events for today'
    else
      render 'today_events'
    end
  end
end
