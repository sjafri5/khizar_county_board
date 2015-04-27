class PagesController < ApplicationController

  def send_email
    respond_to do |format|
      format.js do

        if params[:name].present? &&
           params[:email].present? &&
           /.+@.+\..+/.match(params[:email]) &&
           params[:company].present? &&
           params[:request][:type].present?

          PeopleMailer.contact_email(params[:email], params[:name], params[:company], params[:request][:type], params[:message]).deliver_now
        else
          @failure = true
        end

        render 'send_email', layout: false

      end
    end
  end

end
