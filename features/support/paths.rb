# TL;DR: YOU SHOULD DELETE THIS FILE
#
# This file is used by web_steps.rb, which you should also delete
#
# You have been warned
module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
    case page_name

    when host
      'localhost:3000'  

    when /home\s?page$/
      root_path

    when /Create Idea$/i
      '/ideas/new'

    # Add more mappings here.
    # Here is an example that pulls values out of the Regexp:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))

    else
      begin
        page_name =~ /^the (.*) page$/
        path_components = $1.split(/\s+/)
        self.send(path_components.push('path').join('_').to_sym)
      rescue NoMethodError, ArgumentError
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
          "Now, go and add a mapping in #{__FILE__}"
      end
    end
  end
end
World(NavigationHelpers)


module AutomationHelpers
  # Automates login for reusability
  def sign_up(s, us_f, us_l)

    s.find('a.dropdown-button').click # assuming you only have one a.dropdown-toggle
    s.click_on("Sign up")
    s.fill_in("First Name",       with: us_f)
    s.fill_in("Last Name",        with: us_l)
    s.fill_in("Profile Name",     with: us_f + '_' + us_l)
    s.fill_in("Email",            with: "chrisbuz@tamu.edu")
    s.fill_in("Password",         with: "12345678")
    s.fill_in("Confirm password", with: "12345678")
    s.click_button("Sign up")

  end

  def log_in(s)

      s.fill_in('Login', with: "chrisbuz@tamu.edu")
      s.fill_in('Password', with: "12345678")
      s.click_button("Log in")

  end

  def window_max(session)
    session.current_window.maximize
  end

  def delete_test_user
    #will later delete test user
  end
end
World(AutomationHelpers)


