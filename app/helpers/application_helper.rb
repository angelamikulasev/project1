module ApplicationHelper
  def intellinav
  nav = ''
  	if @current_user.present?
    	nav += "<li>Hello #{ @current_user.name }</li> "
    	nav += "<li>" + link_to('Dashboard', countries_path) + "</li> "
    	nav += "<li>" + link_to('Add Country', new_country_path) + "</li> "
    	nav += "<li>" + link_to('Add Entry', new_entry_path) + "</li> "
    	nav += "<li>" + link_to('View map', results_path) + "</li> "
   	 	# nav += "<li>" + link_to('Edit profile', edit_user_path) + "</li> "
    	nav += "<li>#{ link_to('Sign out', login_path, :method => :delete, :data => {:confirm => 'Are you sure?'}) }</li>"
 		 else
    	nav += "<li>#{ link_to('Sign up', new_user_path) }</li> "
    	nav += "<li>" + link_to('About', pages_path) + "</li> "
    	nav += "<li>#{ link_to('Sign in', login_path) }</li>"
  	 end
  end

	# def intellinav
	# 	nav = ''
	# 	if @user.present?
	# 		nav += "<li>" + link_to('Add Country', new_country_path) + "</li> "
	# 	else
	# 		nav += "<li>" + link_to('Dashboard', countries_path) + "</li> "
	# 	end
	# end
end

