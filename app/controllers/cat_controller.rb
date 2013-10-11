class CatController < ApplicationController
  respond_to :json
  def create
    @cat = Cat.new(params[:cat])
    if @cat.save
      flash[:notice] << "Cat created successfully"
    end
    respond_with @cat
  end

  def destroy
    @cat = Cat.find(params[:id])
    if @cat.destroy
      flash[:notice] << "Cat destroyed successfully"
    end
    respond_with @cat
  end

  def index
    @cats = Cat.all
    respond_with @cats
  end

  def show
    @cat = Cat.find(params[:id])
    respond_with @cat
  end

  def update
    @cat = Cat.find(params[:id])
    if @cat.update_attributes(params[:cat])
      flash[:notice] << "Cat updated successfully"
    end
    respond_with @cat
  end
end
