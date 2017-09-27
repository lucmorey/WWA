class CalloutsController < ApplicationController
    def index
        @callouts = Callout.all.order(created_at: :desc)
    end

    def show
        @callout = Callout.find(params[:id])
        @callouts = Callout.all
    end
    def new 
        @callout = Callout.new
    end

    def create
        
        # Philippe's Method
        # @co = current_user.callouts.create(callout_params)
        
        # Option 2
        @callout = Callout.new(callout_params)
        @callout.user = current_user
        @callout.save
        redirect_to current_user
     
    end 

    private 
    def callout_params
    params.require(:callout).permit(:name, :body, :city, :tag)
    end
end
