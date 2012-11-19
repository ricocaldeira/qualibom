ActionMailer::Base.smtp_settings = {
    :address 							=> "smtp.gmail.com",
    :port                 => 587,
    :domain               => "http://www.ricardocaldeira.com",
    :user_name            => "contato@ricardocaldeira.com",
    :password             => "93827164",
    :authentication       => "plain",
    :enable_starttls_auto => true
}