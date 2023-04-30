Rails.application.routes.draw do

  get("/", {:controller => "user", :action => "show"})
  get("/users", {:controller => "user", :action => "show"})

  get("users/:path_username", {:controller => "user", :action => "user_show"})

end
