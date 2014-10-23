class PagesController < ApplicationController

  def landing
  end

  def features
  end
  
  def about
  end

  def contact
  end

  def send_email
    respond_to do |format|
      PeopleMailer.contact_email(params[:email], params[:name], params[:company], params[:message]).deliver
      format.js { render :layout => false }
    end
  end

end
