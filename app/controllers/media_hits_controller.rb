class MediaHitsController < ApplicationController
    def index
        @media_hits = MediaHit.all
    end
    
    def show
        @media_hit = MediaHit.find(params[:id])
    end
    
    def new
        @media_hit = MediaHit.new
    end
    
    def create
        
        @media_hit = MediaHit.new(media_hit_params)
        
        @media_hit.save
        redirect_to @media_hit
    end
    
    private
    def media_hit_params
        params.require(:media_hits).permit(:title, :text, :author)
    end
    
    
end
