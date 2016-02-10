class EnquiryMailer < ApplicationMailer
	default from: "Dev House Enquiry <info@coderfactory.com>"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.academy_application_mailer.response.subject
  #
  def response(enquiry_id)
    @enquiry = Enquiry.find(enquiry_id)
    mail(to: @enquiry.email, subject: "#{@enquiry.first_name} , your enquiry has been received.")
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.academy_application_mailer.received.subject
  #
  def received(enquiry_id)
    @enquiry = Enquiry.find(enquiry_id)
    mail(to: "info@coderfactory.com", subject: "Dev House-X enquiry received. Topic: #{@enquiry.reason}")
  end
end
