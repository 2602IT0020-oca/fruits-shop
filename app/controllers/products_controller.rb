class ProductsController < ApplicationController
  # Display new product form
  def new
    @product = Product.new
  end

  # Create product
  def create
    @product = Product.new(product_params)

    if @product.save
      # If successful, redirect to top page
      redirect_to products_path
      
    else
      # If failed, re-render the form with error status
      render :new, status: :unprocessable_entity
    end
  end


  # 商品一覧画面
  def index
    @products = Product.all
  end

class ProductsController < ApplicationController
  # 省略 

  # 商品詳細 
  def show
    @product = Product.find(params[:id])
  end

  # 省略 
   # 商品編集
   def edit
     @product = Product.find(params[:id])
   end

   # 商品更新
   def update
     @product = Product.find(params[:id])
     if @product.update(product_params)
       redirect_to product_path # 商品詳細にリダイレクト
     else
       render :edit  # 失敗時に編集画面に戻る
     end
  end
# app/controllers/products_controller.rb
class ProductsController < ApplicationController

  # ...  actions (index, show, new, create) ...

  private

  def product_params
    params.require(:product).permit(:name, :description, :price)
  end # <-- product_params method 

end # <-- ProductsController class 
  private

  # Strong parameters
  def product_params
    params.require(:product).permit(:name, :description, :price)
  end
end