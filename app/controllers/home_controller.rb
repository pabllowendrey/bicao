class HomeController < ApplicationController
    skip_before_action :validate_login_admin
    layout "site"
    
    def index
  	@products = Product.all
  	@products = @products.where(type_product_id: params[:type_product]) if params[:type_product].present?
  	options = {page: params[:page] || 1, per_page: 10}
    @products = @products.paginate(options)
  end
end
