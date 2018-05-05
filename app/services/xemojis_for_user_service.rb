# Gets the list of Xemoji objects that a user has access to.
# Usage: XemojisForUserService.new({user: <insert_user_object>}).call
class XemojisForUserService

  def initialize(params)
    @user = params[:user]
  end

  # get Xemojis depending on the user
  def call
    @user.xemojis
  end

end
