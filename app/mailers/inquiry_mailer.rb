class InquiryMailer < ApplicationMailer

  def send_mail(inquiry)
    mail(
      from: 'system@example.com',
      to: 'iune30.poakolu@gmail.com',
      subject: 'お問い合わせ通知'
    )
    
  end

end
