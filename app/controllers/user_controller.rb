class UserController < ApplicationController

  def show
    render({:template => "user_template/show.html.erb"})
  end

  def user_show
    the_username = params.fetch("path_username")
    
    @matching_user = User.where({:username => the_username}).at(0)

    if @matching_user == nil
      redirect_to("/")
    else 
      render({:template => "user_template/user_show.html.erb"})
    end
  end
end
