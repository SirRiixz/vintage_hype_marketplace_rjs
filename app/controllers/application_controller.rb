class ApplicationController < ActionController::Base

  before_action :authenticate_user!

  protect_from_forgery with: :null_session

    private
  
      def after_sign_in_path_for(resource)
        profile_posts_path [:profile_id]
        end

end
