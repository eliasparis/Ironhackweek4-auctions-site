class ProductsController < ApplicationController

def new
	@user = User.find_by(id: params[:user_id])
	@product = @user.products.new
end


def index
	@user = User.find_by(id: params[:user_id])
	@products = @user.products
end


def show
	@user = User.find_by(id: params[:user_id])
	@product = @user.products.find (params[:id]) 
end


def create
	@user = User.find params[:user_id]
	@product = @user.products.new entry_params
		if @product.save
			redirect_to action: 'index'
		else
			render 'new'
		end
end


private
def entry_params
	params.require(:product).permit(:deadline, :products, :title)
end

end
