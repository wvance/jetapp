class UserFriendshipDecorator < Draper::Decorator
  delegate_all

  def friendship_state
  	model.state.titalize
  end

  def sub_message
  	case model.state
  	when 'pending'
  		"Do you really want to be friends with #{model.friend.firstNam}."
  	when 'accepted'
  		"Yes are friends with #{model.friend.firstName}."
  	end
	end

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
  #   def created_at
  #     helpers.content_tag :span, class: 'time' do
  #       object.created_at.strftime("%a %m/%d/%y")
  #     end
  #   end

end
