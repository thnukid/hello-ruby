class AdminNotifier < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.admin_notifier.error_notifier.subject
  #
  def error_notifier
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  def error_occured(error)
    @error = error
    mail :to => "admin@localhost", :subject => 'Depot App Error occured'
  end

end
