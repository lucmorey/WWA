class CalloutsController < ApplicationController
    def index
        # @callouts = Callout.all.order(created_at: :desc)
        name = "name ILIKE :query"
        tag = "tag ILIKE :query"
        city = "city ILIKE :query"
        query = {query: "%#{params[:query]}%"}
        @callouts = Callout.where("#{name} OR #{tag} OR #{city}", query).order(created_at: :desc)
    end

    def show
        @callout = Callout.find(params[:id])
        
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

    def destroy
        @callout = Callout.find(params[:id])
        @callout.destroy
        
        redirect_to callouts_path
    end 

    private 
    def callout_params
    params.require(:callout).permit(:name, :body, :city, :tag, :calloutpic)
    end
end
