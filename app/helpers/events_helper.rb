module EventsHelper
	def user
      if current_user
        link_to current_user.username, user_path(current_user)
      else
        "Please Sign In."
      end
    end

  	def new_event
      link_to 'New Event', new_event_path if current_user
  	end

    def index_empty_table
      if @events.empty?
        'There are not events created yet'
      else
      render 'table'
      end
    end

    def event_list(table)
      return 'There are not events.' if table.empty?

      if table == @today
        render 'today_event'
      elsif table == @upcoming
        render 'upcoming_event'
      else
        render 'past_event'
      end
    end
end
