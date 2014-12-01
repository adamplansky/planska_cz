class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end
  
  def create
      @contact = Contact.new(secure_params)
    puts @contact.inspect
    if @contact.valid?
      UserMailer.ask_email(@contact).deliver
      flash[:notice] = "Zpráva odeslána!"
     redirect_to :controller => 'contacts', :action => 'new'
    else
      flash[:notice] = "Zprávu se nepodařilo odeslat!"
      render :new
    end
  end
  
  def secure_params
    params.require(:contact).permit(:name, :email, :message)
  end
  
end

