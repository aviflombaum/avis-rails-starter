class ApplicationController < ActionController::Base
  def homepage
    render layout: false
  end
end
