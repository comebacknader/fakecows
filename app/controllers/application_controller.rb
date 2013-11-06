class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :authorize
  after_filter :first_time_visiting

      	def authorize 
          unless Admin.find_by_id(session[:admin_id])
            redirect_to log_in_path, notice: "Please log in"
          end
        end


  def first_time_visiting
    if session[:mail].nil?
      session[:mail] = 1
    end
  end


private



def current_admin
  @current_admin ||= Admin.find(session[:admin_id]) if session[:admin_id]
end

helper_method :current_admin

end
