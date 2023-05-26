class WelcomeMailer < ApplicationMailer
     def welcome_mail(project)
           @project = project
           mail(to: User.pluck(:email), subject: 'Simple Demo to showcase Active Job')
     end
end