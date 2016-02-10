class Enquiry < ActiveRecord::Base
	EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :first_name, presence: true
  validates :email, presence: true, :format => EMAIL_REGEX
  validates :phone, presence: true, length: { maximum: 15, too_long: "(can only have a maximum of %{count} digits)" }
  validates :message, presence: true
  validates :reason, presence: true
  validates :reason, inclusion: { in: %w(Development Support Hiring Other), message: "%{value} is not a valid reason" }

  def send_emails
    EnquiryMailerJob.perform_async(self.id)
  end

  def self.reverse_order
    order(created_at: :desc)
  end
end
