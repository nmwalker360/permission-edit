class TestimoniesController < ApplicationController
    def index
	@testimonies = Testimony.all
    end
    
    def new
        @testimony = Testimony.new
    end
    
    def edit
    @testimony = Testimony.find(params[:id])
    end
    
	    
    
    def create
        @testimony = Testimony.new(testimony_params)
		
	if @testimony.save
		redirect_to testimonies_path
		else
			render 'new'
	end
	end
    
    def update
    	@testimony = Testimony.find(params[:id])
 
		if @testimony.update(testimony_params)
			redirect_to testimonies_path
		else
			render 'edit'
		end
		 
    end
    
	
	def destroy
	@testimony = Testimony.find(params[:id])
	@testimony.destroy
	
	redirect_to testimonies_path
	end
   
    private
	def testimony_params
			params.require(:testimony).permit(:name, :text, :rating)			
	end

end
