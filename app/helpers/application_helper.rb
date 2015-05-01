module ApplicationHelper
  #FORCES USER TO SIGN UP BEFORE GOING TO SITE
 def is_active?(link_path)
  current_page?(link_path) ? "active" : ""
 end
end
