class PagesController < ApplicationController

  def landing
  end

  def features
  end

  def mission
  end

  def careers
  end

  def business_development
  end

  def contact
    @sent = params[:sent] == 'true'
  end

  def send_email
    if params[:name].present? &&
       params[:email].present? &&
       /.+@.+\..+/.match(params[:email]) &&
       params[:company].present? &&
       params[:request][:type].present?

      PeopleMailer.contact_email(params[:email], params[:name], params[:company], params[:request][:type], params[:message]).deliver

      redirect_to contact_path(sent: true)
    else
      flash[:alert] = "Oops, something went wrong."
      redirect_to contact_path
    end
  end

end
