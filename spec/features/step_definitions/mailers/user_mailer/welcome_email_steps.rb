steps_for :user_mailer do
  step 'I am registering as a user' do
    UserMailer.welcome_email.deliver_now
  end

  step 'I get a welcome email' do
    expect(ActionMailer::Base.deliveries.empty?).to eq(false)
    email = ActionMailer::Base.deliveries.last
    expect(email.to).to include("foo@mailinator.com")
    expect(email.subject).to eq("Welcome to My Awesome Site")
  end
end
