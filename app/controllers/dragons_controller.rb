class DragonsController < ApplicationController
  def index
    @dragons = Dragon.all 
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    redirect_to "/dragons"
  end

  def show  
    @dragons = Dragon.find_by(id: params[:id])
    render "show.html.erb"
  end
end
