class XemojisController < ApplicationController
  before_action :set_user


  # GET /users/:user_id/xemojis
  # GET /users/:user_id/xemojis.json
  def index
     @xemojis = XemojisForUserService.new({user: @user}).call
  end

  # GET /users/:user_id/xemojis/1
  # GET /users/:user_id/xemojis/1.json
  def show
  end

  # GET /users/:user_id/xemojis/new
  def new
    redirect_to :action => 'not_implemented', :status => 501
  end

  # GET /users/:user_id/xemojis/1/edit
  def edit
    redirect_to :action => 'not_implemented', :status => 501
  end

  # POST /users/:user_id/xemojis
  # POST /users/:user_id/xemojis.json
  def create
    redirect_to :action => 'not_implemented', :status => 501
  end

  # PATCH/PUT /users/:user_id/xemojis/1
  # PATCH/PUT /users/:user_id/xemojis/1.json
  def update
    redirect_to :action => 'not_implemented', :status => 501
  end

  # DELETE /users/:user_id/xemojis/1
  # DELETE /users/:user_id/xemojis/1.json
  def destroy
    redirect_to :action => 'not_implemented', :status => 501
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:user_id])
    end

end
