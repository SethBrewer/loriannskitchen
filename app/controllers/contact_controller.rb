class ContactController < ApplicationController

	def index
	  # render index.html.erb
	end

	def create
	  if Notifications.deliver_contact(params[:contact])
		flash[:notice] = "Thank you for contacting us. We will respond shortly."
		redirect_to(contact_path)
	  else
		flash.now[:error] = "Sorry, your email didn't go through. Please try again."
		render :index
	  end
	end

end
