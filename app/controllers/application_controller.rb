class ApplicationController < ActionController::Base
  before_action :set_pages

  private

  def set_pages
    @pages = Page.all
  end
end
