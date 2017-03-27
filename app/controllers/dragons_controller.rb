class DragonsController < ApplicationController
  def index
    @dragons = Dragon.all 
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    @dragon = Dragon.create(
      category: params[:category],
      color: params[:color],
      size: params[:size],
      age: params[:age],
      alignment: params[:alignment]
      )
    redirect_to "/dragons"
  end

  def show  
    @dragon = Dragon.find_by(id: params[:id])
    render "show.html.erb"
  end

  def edit
    @dragon = Dragon.find_by(id: params[:id])
    render "edit.html.erb"
  end

  def update
    @dragon = Dragon.find_by(id: params[:id])
    @dragon.category = params[:category]
    @dragon.color = params[:color]
    @dragon.size = params[:size]
    @dragon.age = params[:age]
    @dragon.alignment = params[:alignment]
    @dragon.save
    redirect_to "/dragons/#{@dragon.id}"
  end

  def destroy
    @dragon = Dragon.find_by(id: params[:id])
    @dragon.destroy
    redirect_to "/dragons"
  end
end
