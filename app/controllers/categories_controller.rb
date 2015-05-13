class CategoriesController < ApplicationController
  
  before_action :get_category, only: [:edit, :updade, :destroy, :show]

  def get_category
     @category = Category.find(params[:id]) 
  end
  

  def index
    if params[:name]
    @categories = Category.where(name: params[:name]).first
    else
    @categories = Category.all
   end
  end

  def show
  @products = @category.products
  end

  def new
   @category = Category.new
  end
  
  def create
   @category = Category.new(category_params)
    if @category.save
     redirect_to(:action => 'index')
    else
     render('new')
    end
  end

    def edit

  end
  
  def update
  
   if @category.update_attributes(category_params)
     redirect_to(:action => 'show', :id => @category.id)
   else
    render('index')
   end
  end

  def delete
   
  end
  
  def destroy
   #@category.find(params[:id]).destroy

   @category.destroy
   redirect_to(:action => 'index')
  end

  private
  def category_params
   params.require(:category).permit(:name, :thumburl)
  end
end
