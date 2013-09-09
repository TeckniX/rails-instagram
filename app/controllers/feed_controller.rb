class FeedController < ApplicationController
  def index
    redirect_to :controller => 'sessions', :action => 'connect' if !session[:access_token] 

    client = Instagram.client(:access_token => session[:access_token])
    @user = client.user
    ## 777 is the user's ID - to be obtained via? 
    ## https://github.com/zeantsoi/rails-instagram-uid/blob/master/app/controllers/lookup_controller.rb
    #users = client.user_search('marissa_ang')
    #@recent_media_items = client.user_recent_media(users[0].id)
    @recent_media_items = client.tag_recent_media('skullcandysnow', :no_response_wrapper => true)
    #@recent_media_items = client.media_popular(:no_response_wrapper => true)
  end
end
