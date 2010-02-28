require 'json' # make sure to install the json gem
require 'net/http'
require 'net/https'
class UsersController < ApplicationController
  skip_before_filter :verify_authenticity_token, :only => [:create]

  def index
  	@ranks = Rank.all
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
  	@ranks = Rank.all
  end

  # Handle the redirect with the token from RPX
def create
		@ranks = Rank.all
  u = URI.parse('https://rpxnow.com/api/v2/auth_info')
  req = Net::HTTP::Post.new(u.path)
  req.set_form_data({'token' => params[:token],
                      'apiKey' => 'bcc2de236838231be15aad6d81751f1cc63e642a',  # <-- your RPX api key here.
                      'format' => 'json'})

  http = Net::HTTP.new(u.host,u.port)
  http.use_ssl = true if u.scheme == 'https'
  res = http.request(req)

  json_resp = res.body
  json = JSON.parse(json_resp)

  if json['stat'] == 'ok'
    unique_identifier = json['profile']['identifier']
    username = json['profile']['preferredUsername']
    nickname = json['profile']['displayName'] if nickname.nil?
    email = json['profile']['email']
    photo_url = json['profile']['photo']

 

    # implement your own do_success method which signs the user in
    # to your website
    #do_success(unique_identifier,email,nickname,photo_url)
    data = {:name => username, :email => email, :identifier => unique_identifier}
  self.current_user = User.find_by_identifier(data[:identifier]) || User.create!(data)
      redirect_to '/'
  else
    flash[:notice] = 'Log in failed'
    redirect_to '/'
  end
end

 def save_tasks
 	logger.debug "made it here!"
 	@user = self.current_user #User.find(params[:id])
    @task = Task.find(params[:task])
  if params[:show] == "true"
    @user.tasks << @task
  else
    @user.tasks.delete(@task)
  end
  @user.save!
  #render :nothing => true
  #render :partial => 'save_tasks'
   respond_to do |format|
      format.html # show.html.erb
      format.js  #{ render :xml => @rank }
    end
 end

  def destroy
    self.current_user = nil
    redirect_to :action => :new
  end
end