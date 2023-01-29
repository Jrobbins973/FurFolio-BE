class SessionsController < ApplicationController

    # LOGIN

    def create 
        user = User.find_by(email_address: params[:email_address])
        if user and user.authenticate(params[:password])
            session[:user_id] = user.id
            render json: user, status: :ok, except: (:password_digest), include: :pets 
        else
            render json: {errors: "Invalid Email or Password"}, status: 401
        end
    end

        
    # LOGOUT
    def delete 
        session.delete :user_id 
        head :no_content
    end


end
