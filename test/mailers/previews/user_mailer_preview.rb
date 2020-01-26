# frozen_string_literal: true

# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/reset_password_email
  def reset_password_email
    user = User.first
    user.generate_reset_password_token!
    UserMailer.reset_password_email(user)
  end

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/renew_service
  def renew_service
    user = User.find_by(name: "shoynoi")
    UserMailer.renew_service(user)
  end
end
