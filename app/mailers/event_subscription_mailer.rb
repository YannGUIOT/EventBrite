class EventSubscriptionMailer < ApplicationMailer
    
    default from: 'no-reply@yopmail.com'

    def event_subscription(event_admin, event, user)
        @event_admin = event_admin
        @event = event
        @user = user 
        mail(to: @event_admin.email, subject: 'Confirmation event') 
    end
end
