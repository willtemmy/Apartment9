class TenantsController < ApplicationController
    before_action :set_tenant, only: [:show,:update,:destroy]
    def index
        @tenants = Tenant.all
        render json: @tenants
    end

    def show
        render json: @tenants
end

def create 
    @tenant = Tenant.new(tenant_params)
    if @tenant.save
        #render json:@tenant, status: :created location: @tenant
else
    render json: @tenant.errors, status: :unprocessable_entity
    end
    end

def update
    if @tenant.update(tenant_params)
        render json: @tenant
        else
            render json: @tenant.errors, status: :unprocessable_entity
            end
            end

def destroy
    @tenant.destroy
    render json: @tenant
    head :no_content
    end
     
    private

    def set_tenant
        @tenant = Tenant.find(params[:id])
        #render json: @tenant
    end

    def tenant_params
        params.require(:tenant).permit(:name, :age)
        end
        end
