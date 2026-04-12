class HomeController < ApplicationController
    skip_before_action :validate_login_admin
    layout "site"
    
    def index
        @products = Product.all
    end
end
