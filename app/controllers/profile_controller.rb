

class ProfileController < ApplicationController
  def index
      
      if params[:q]=='favorites'
          
       @properties = current_user.get_up_voted Property

      else
      if params[:id]
          @properties = Property.find_all_by_user_id(params[:id])
        else
          @properties = []
      end

          
          
     end
  end
end
