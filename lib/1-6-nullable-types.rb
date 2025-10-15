Client = Data.define(:personal_info)
PersonalInfo = Data.define(:email)
class Mailer
  def send_message(email, message)
    "Sender: #{email}\n\n#{message}"
  end
end

def send_message_to_client(client, message, mailer)
  email = client&.personal_info&.email
  mailer.send_message(email, message) unless email.nil?
end

send_message_to_client(nil, "foo", Mailer.new)
send_message_to_client(Client.new(nil), "foo", Mailer.new)
send_message_to_client(Client.new(PersonalInfo.new(nil)), "foo", Mailer.new)
send_message_to_client(Client.new(PersonalInfo.new("foo@bar.baz")), "foo", Mailer.new)

