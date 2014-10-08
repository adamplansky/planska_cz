class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end
  
  def create
    @contact = Contact.new(params[:project])
    if @contact.save
      
    else
      
    end
    
    
  end
  
end

