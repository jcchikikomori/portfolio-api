# Preview all emails at http://localhost:3000/rails/mailers/uniqlo_edm_mailer
class UniqloEdmMailerPreview < ActionMailer::Preview
  def sample_mail_preview
    UniqloEdmMailer.sample_email
  end
end
