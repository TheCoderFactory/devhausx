class PagesController < ApplicationController
  def index
  	@enquiry = Enquiry.new
  end

  def resources
  end
end
