class ApplicationController < ActionController::Base
before_action :validate_login_admin

    def validate_login_admin
        if cookies[:bicao_burguer].present?
            hash_admin = JSON.parse(cookies[:bicao_burguer])
            if hash_admin["id"].present?
                administrators = Administrator.where(id: hash_admin["id"])
                if administrators.count > 0
                    @administrator = administrators.first
                    return
                end
            end
        end
        redirect_to "/login"
    end
end
