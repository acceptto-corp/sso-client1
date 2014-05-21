class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :check_cas_login
  
  def check_cas_login
    if request.session['cas'].nil? || request.session['cas']['user'].nil?
      return render :file => "#{Rails.root}/public/401.html", :status => 401, :layout => false
    end
  end
end