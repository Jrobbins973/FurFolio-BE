class UsersController < ApplicationController



# INDEX

def index
users = User.all 
render json: users, status: :ok, except: :password_digest, include: :pets
end







private

    def user_params
        params.permit(:username, :password, :pet_id, :phone_number, :email_address)
    end




end
