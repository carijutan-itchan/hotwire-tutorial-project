class Users::SessionsController < Devise::SessionsController
  def new
    respond_to do |format|
      format.html { super }
      format.turbo_stream  do
        # When sign in fails devise redirects to new path using turbo_stream format
        # To update the sign in form with errors we use turbo_stream.replace
        render turbo_stream: turbo_stream.replace('error_message_container', partial: 'users/shared/auth_error_message')
      end
    end
  end
end