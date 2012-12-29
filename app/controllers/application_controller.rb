class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :fix_cas_session
  before_filter :ensure_loggedin

  def fix_cas_session
    if session[:cas].respond_to?(:with_indifferent_access)
      session[:cas] = session[:cas].with_indifferent_access
    end
  end

  def ensure_loggedin
    if session[:cas].nil? || session[:cas][:user].nil?
      render status: 401, text: "Redirecting to SSO..."
    end
  end
end
