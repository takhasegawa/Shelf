class ApplicationController < ActionController::Base
  protect_from_forgery
  
  rescue_from Exception, :with => :render_500
  rescue_from ActiveRecord::RecordNotFound, :with => :render_404
  
private
  def render_404(exception)
    render "errors/not_found", :status => 404
  end
  
  def render_500(exception)
    render "errors/internal_server_error", :status => 500
  end

end
