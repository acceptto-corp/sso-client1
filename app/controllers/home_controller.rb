class HomeController < ApplicationController
  
  def index
    if request.session['cas'].nil? || request.session['cas']['user'].nil?
      @user = nil
    else
      @user = request.session['cas']['user']
    end
    
    @ticket = "#{request.session['cas']['ticket']}" rescue ''
  end
  
  def login
    
    p "****************************************************************"
    p "Params: #{params}"
    p "****************************************************************"
    
		unless params[:cas_failed].blank?
			return redirect_to '/index'
		end
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