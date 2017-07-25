class TagsController < ApplicationController
  
  def index 
    @tags = Tag.all
  end
  
  def show
    # the route get '/tags/:id' => 'tags#show' sends this request to the Tags controller's show action with {id: 1} in params
    @tag = Tag.find(params[:id])
    @destinations = @tag.destinations
  end
  
end
