class LeasesController < ApplicationController

    def create
      @lease = Lease.new(lease_params)
      if @lease.save
        render json: @lease, status: :created
      else
        render json: { error: @lease.errors.full_messages }, status: :unprocessable_entity
      end
    end
    def destroy
        lease = Lease.find_by(id: params[:id])
        if lease
          lease.destroy
          head :no_content
        else
          render json: { error: 'Lease not found' }, status: :not_found
        end
      end


    private

    def lease_params
      params.require(:lease).permit(:rent, :tenant_id, :apartment_id)
    end

  end
