class ApartmenttsController < ApplicationController
    def index 
        apartment = Apartmentt.all 
        render json:apartment
    end

    def show
        apartment = Apartmentt.find_by(id:params[:id])
        render json:apartment
    end


    def create
        apartment = Apartmentt.create(apartment_params)
        render json:apartment
    end
    
    def update
       apartment = Apartmentt.find_by(id:params[:id])
       if apartment 
       apartment.update(apartment_params)
       render json:apartment
       else 
        render json: {error: "apartment not found"}
       end
    end

    def destroy
        apartment =Apartmentt.find_by(id:params[:id])
        if apartment
        apartment.destroy
        render json: {success: "apartment deleted"}
        else  
            render json: {error: "apartment not found"}
        end
    end
    private 
    def apartment_params
        params.permit(:number)
    end

end


    
