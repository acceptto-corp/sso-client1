class HomeController < ApplicationController
  
  skip_before_filter :check_cas_login, :only => :public
  
  def public
  end
  
  def index
    @user = request.session['cas']['user']
  end
  
  def logout
    request.session['cas'] = nil
    render 'index'
  end
end