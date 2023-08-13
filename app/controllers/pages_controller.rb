class PagesController < ApplicationController
  def app
    params[:section] ||= "timeline"
  end
end
