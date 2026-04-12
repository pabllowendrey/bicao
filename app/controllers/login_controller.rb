class LoginController < ApplicationController
    skip_before_action :verify_authenticity_token, :validate_login_admin

    layout "login"
    def index;end

    def logging
        administrators = Administrator.where(email: params[:email], password: params[:password])
        if administrators.count > 0
            administrator = administrators.first
            time = params[:remember] == "1" ? 1.year.from_now : 30.minutes.from_now
            value = {
              id: administrator.id,
              nome: administrator.name,
              email: administrator.email
            }
            cookies[:bicao_burguer] = { value: value.to_json, expires: time, httponly: true }

            redirect_to "/home"
        else
            flash[:error] = "E-mail ou senha inválidos"
            redirect_to "/login"
        end
    end

    def logout
        cookies[:bicao_burguer] = nil
        redirect_to "/login"
    end
end
