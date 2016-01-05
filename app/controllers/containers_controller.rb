class ContainersController < ApplicationController
  def index
    @containers = Container.all
  end

  def show
  	@container = Container.find(params[:id])
  end

  def new
  end

  def edit
    @container = Container.find(params[:id])
  end

  def create
    puts params
  	@container = Container.new(container_params)
  	@container.save
  	redirect_to containers_path()
  end

  def update
    @container = Container.find(params[:id])
    if @container.update(container_params)
      redirect_to @container
    else
      render 'edit'
    end
  end

  def destroy
    @article = Container.find(params[:id])
    @article.destroy
    redirect_to containers_path
  end

  private
  def container_params
    params.require(:container).permit(:title,:text,:category,:date)
  end
end