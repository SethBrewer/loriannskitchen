class Notifications < ActionMailer::Base

  def contact(email_params)
    subject "[Website Contact Message] " << email_params[:subject]
    recipients "seth@loriannskitchen.com"
    from email_params[:email]
    sent_on Time.now.utc

    body :message => email_params[:body], :name => email_params[:name]
  end

end
