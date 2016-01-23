class ContainersController < ApplicationController
  def index
    if params[:category].present?
      @containers = Container.where(category: params[:category]).order(created_at: :desc)
    else
    @containers = Container.all.order(created_at: :desc)
    end
    @categories = Container.all.pluck(:category).uniq
  end

  def show
  	@container = Container.find(params[:id])
  end

  def new
    puts params
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