class ProfileController < ApplicationController
  def index
      
      
      if params[:id]
          @properties = Property.find_all_by_user_id(params[:id])
        else
          @properties = []
      end

  end
end
