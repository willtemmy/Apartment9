class ApartmenttsController < ApplicationController
    def index 
        apartment = Apartmentt.all 
        render json:apartment
    end

    def show
        apartment = Apartmentt.find_by(id:params[:id])
        render json:apartment
    end
end


    
