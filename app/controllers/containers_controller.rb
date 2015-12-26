class ContainersController < ApplicationController
  def index
  end

  def new
  end

  def create
  	@container = Container.new(params.require(:container).permit(:title,:text))

  	@container.save
  	redirect_to @container

  end

end
