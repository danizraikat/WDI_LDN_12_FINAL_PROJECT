class StaticsController < ApplicationController
  def index
    render text: "", layout: true  
  end
end

#we set rails to render only application.html.erb in layout view.......otherwise it will look for other view files
