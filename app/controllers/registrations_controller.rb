class RegistrationsController < Devise::RegistrationsController

  def create
   super do |resource|

   store = Store.first
   resource.store << store
   resource.save
 end
  end

  private

 def find_store_id(store_input)
     if Store.where(store_id: store_input).exists?
         @store = Store.find(store_input)
     else
         flash[:alert] = 'Signup failed.'
         render 'new'
     end
 end

 def sign_up_params
   params.require(:user).permit(:firstName, :lastName, :phone, :active, :store_id, :admin, :email, :password, :password_confirmation)
 end

 def account_update_params
   params.require(:user).permit(:firstName, :lastName, :phone, :active, :store_id, :admin, :email, :password, :password_confirmation, :current_password)

 end
end
