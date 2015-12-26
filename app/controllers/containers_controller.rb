class ContainersController < ApplicationController
  def index
    @containers = Container.all
  end

  def show
  	@container = Container.find(params[:id])
  end

  def new
  end

  def create
  	@container = Container.new(params.require(:container).permit(:title,:text))
  	@container.save
  	redirect_to containers_path()
  end

end
