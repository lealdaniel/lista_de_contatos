class ApplicationController < ActionController::Base
   
   include SessionsHelper

   private
      def require_logged_in_user
         unless user_signed_in? 
            flash[:danger] = 'Restricted area. Please login to continue'
            redirect_to login_path
         end
      end
      
end
