class UniqloEdmMailer < ApplicationMailer
  layout false
  default from: "noreply@jcc-portfolio-api.com"

  def sample_email
    mail(to: "johncyrillcorsanes@gmail.com", subject: "Sample Email - UNIQLO")
  end
end
