class Api::AccordsController < ApplicationController

    def create 
        @new_accord = Accord.new(accord_params)
        if @new_accord.save
            render json: @new_accord, 
            status: :created
        else 
            render json: @new_accord.errors.full_messages, 
            status: :unprocessable_entity
        end 
    end 

    def index 
        render json: Accord.all.order(created_at: :desc)
    end 

    def show 
        render json: @accord
    end 

    private 

    def accord_params
        params.permit(:subject, :content)
    end 

    def set_accord 
        @accord = Accord.find(params[:id])
    end 

end
