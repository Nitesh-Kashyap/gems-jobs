class WelcomeJob < ApplicationJob
  queue_as :default
  def perform(project)
    WelcomeMailer.send_welcome_mail(project).deliver_now
  end
end