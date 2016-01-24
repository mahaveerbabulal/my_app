class AboutController < ApplicationController
  def page
  end

  def projects
  	@projects = Project1.all
  end
end
