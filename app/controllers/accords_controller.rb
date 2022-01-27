class AccordsController < ApplicationController

    def create 

    end 

    def index 

    end 

    def show 

    end 

    private 

    def accord_params
        params.permit(:subject, :content)
    end 

    def set_accord 
        @accord = Accord.find(params[:id])
    end 

end
