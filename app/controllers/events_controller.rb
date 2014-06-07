class EventsController < InheritedResources::Base
	before_action :set_event, only: [:show, :edit, :update, :destroy]
	def create
		@event = Event.new(event_params)

		respond_to do |format|
		if @event.save
		format.html { redirect_to @event, notice: 'Your event was successfully created.' }
		format.json { render action: 'show', status: :created, location: @event }
		else
		format.html { render action: 'new' }
		format.json { render json: @event.errors, status: :unprocessable_entity }
		end
		end
	end

	def update
		respond_to do |format|
			if @event.update(event_params)
				format.html { redirect_to @event, notice: 'Your event was successfully updated.' }
				format.json { head :no_content }
			else
				format.html { render action: 'edit' }
				format.json { render json: @event.errors, status: :unprocessable_entity }
			end
		end
	end
	


	private
	  # Use callbacks to share common setup or constraints between actions.
	  def set_event
	    @event = Event.find(params[:id])
	  end

	  # Never trust parameters from the scary internet, only allow the white list through.
	  def event_params
	    params.require(:event).permit(:name, :description,:start_date,:end_date,:start_time,:end_time,:organizer,:venue, :user_id,:event_tags_attributes => [:tag_id,:id])
	  end


end
