class SessionsController < ApplicationController
  def create
    auth = request.env['omniauth.auth']
    authentication = Authentication.find_by_provider_and_uid(auth['provider'],auth ['uid'])
    debugger
    unless authentication
      
      user = User.new :name => auth['user_info']['name'], :nickname => auth['user_info']['nickname']
      user.authentications.build(
        :provider => auth['provider'],
        :uid => auth['uid'],
        :image => auth['image'],
        :oauth_token => auth['credentials']['token'],
        :oauth_token_secret => auth['credentials']['secret']
      )
      user.save!
    else
      user = authenticate.user
    end
    session[:user_id] = user.id
    redirect_to root_path
    
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
  
  def failure
  end

end
