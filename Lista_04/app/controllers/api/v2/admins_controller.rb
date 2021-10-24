class Api::V2::AdminsController < ApplicationController
    def login
        admin = Admin.find_by!(email: params[:email])
        if admin.valid_password?(params[:password])
            render json: admin
        else
            head status: unauthorized
        end
        rescue StandardError => e
            render json: {message: e.message}, status: 404
    end 
end
