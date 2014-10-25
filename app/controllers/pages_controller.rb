class PagesController < ApplicationController

  def landing
  end

  def features
  end

  def mission
  end

  def contact
    @sent = params[:sent] == 'true'
  end

  def send_email
    if params[:email].present? &&
       /.+@.+\..+/.match(params[:email]) &&
       params[:name].present? &&
       params[:company].present?

      PeopleMailer.contact_email(params[:email], params[:name], params[:company], params[:message]).deliver

      redirect_to contact_path(sent: true)
    else
      flash.now[:alert] = "Oops, something went wrong."
      render 'contact'
    end
  end

end
