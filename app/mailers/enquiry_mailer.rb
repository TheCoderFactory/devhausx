class EnquiryMailer < ApplicationMailer
	default from: "Dev House Enquiry <info@devhausx.com>"

  def response(enquiry_id)
    @enquiry = Enquiry.find(enquiry_id)
    if @enquiry.send_email
      mail(to: @enquiry.email, subject: "#{@enquiry.first_name}, your enquiry has been received.")
    end
  end

  def received(enquiry_id)
    @enquiry = Enquiry.find(enquiry_id)
    mail(to: "info@devhausx.com", subject: "Dev House X Enquiry Received. Topic: #{@enquiry.reason}")
  end
end
