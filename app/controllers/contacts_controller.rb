# Contacts Controller
class ContactsController < ApplicationController
  def new
  end

  def create
    pp params
    @contact = Contact.new(params["contact"]["name"], params["contact"]["email"], params["contact"]["message"])
    if @contact
      UserMailer.ask_email(@contact).deliver
      flash[:notice] = 'Zpráva odeslána!'
      redirect_to controller: 'contacts', action: 'new'
    else
      flash[:notice] = 'Zprávu se nepodařilo odeslat!'
      render :new
    end
  end

end
