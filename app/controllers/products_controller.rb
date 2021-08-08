class ProductsController < ApplicationController
    def index
        render json: Product.all
    end

    def create 
        product = Product.create(product_params)
        render json: product
    end

    def update
        product = Product.find(params[:id])
        dog.update_attributes(product_params)
        render json: product
    end

    def destroy
        Product.destroy(params[:id])
    end

    private

    def product_params
        params.require(:product).permit(:product_name, :prize, :category)
    end
end 