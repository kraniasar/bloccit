<<<<<<< HEAD
if Rails.env.development? || Rails.env.production?
=======
if Rails.env.development? || Rails.env.production
>>>>>>> 2aa3fbf006ef86d13482c9a46e91d04e70d2d229
  ActionMailer::Base.delivery_method = :smtp
  ActionMailer::Base.smtp_settings = {
    address:        'smtp.sendgrid.net',
    port:           '2525',
    authentication: :plain,
    user_name:      ENV['SENDGRID_USERNAME'],
    password:       ENV['SENDGRID_PASSWORD'],
    domain:         'heroku.com',
    enable_starttls_auto: true
  }
end
