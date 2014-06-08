class HomeController < ApplicationController
  
  def index
    if request.session['cas'].nil? || request.session['cas']['user'].nil?
      @user = nil
    else
      @user = request.session['cas']['user']
    end
  end
  
  def login
    if request.session['cas'].nil? || request.session['cas']['user'].nil?
      return render :file => "#{Rails.root}/public/401.html", :status => 401, :layout => false
    else
      redirect_to '/index'
    end
  end
  
  def logout
    request.session['cas'] = nil
    render 'index'
  end
end