class ConcertsController < ApplicationController

	def index

			@concerts_today = Concert.where(["date = ?", Date.today])

			@concerts_later_this_month = Concert.where(:date => Date.tomorrow...Date.today.next_month.beginning_of_month)
			@concerts_after_this_month = Concert.where(["date >= ?", Date.today.next_month.beginning_of_month])
	end 

	def new 
			@concert = Concert.new 
	end 

	def show
			@concert = Concert.find params[:id]
	end 

	def create
			@concert = Concert.new concert_params
		if @concert.save
			flash[:notice] = "Concert created!"
			redirect_to concerts_path
		else
			@errors = @concert.errors.full_messages
			flash.now[:alert] = "There was a problem creating a concert"
			render 'new'
		end
	end



		private
	def concert_params
		return params.require(:concert).permit(:band, :venue, :city, :price, :date, :description)
	end



end


#put the filtered concert in a new template in concert’s views 