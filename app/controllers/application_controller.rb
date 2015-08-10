class ApplicationController < ActionController::API

  before_action :restrict_access

  private

  def restrict_access
    head :unauthorized unless params[:access_token] == ENV["API_KEY_#{Rails.env}"]
  end

end
