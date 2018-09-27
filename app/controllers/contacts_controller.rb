class ContactsController < ApplicationController
	before_action :set_contact , only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user! , except: [:new]

	def index
		@contacts = Contact.all
	end

	def show
	end

	def new
		@contact = Contact.new
	end

	def edit
	end

	def update
		if @contact.update_attributes(contact_params)
				redirect_to contacts_path
		else
			render "edit"
		end
	end

	def destroy
		@contact.destroy
		redirect_to contacts_path
	end

	def create
		@contact = Contact.new(contact_params)
		respond_to do  |format|
		if @contact.save
			ContactMailer.registration_confimation(@contact).deliver
			format.html{ redirect_to new_contact_path}
			format.json{ render :show , status: :created, location: @contact }
			flash[:info] = "信件已發送!"
		else
			format.html{ render :new }
			format.json{ render :json , @contact.errors, status: :unprocessable_entiry}
			end
		end
	end

  private

  def set_contact
      @contact = Contact.find(params[:id])
  end


  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end
