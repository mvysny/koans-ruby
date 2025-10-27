# frozen_string_literal: true

# A client with {PersonalInfo} `personal_info`
Client = Data.define(:personal_info)
# A {String} `email`
PersonalInfo = Data.define(:email)

# Mails messages
class Mailer
  # Sends message to given e-mail address
  # @param email [String]
  # @param message [String]
  # @return [String] the e-mail message
  def send_message(email, message)
    "Sender: #{email}\n\n#{message}"
  end
end

# Sends `message` to `client` using given `mailer`.
# @param client [Client, nil] If `nil`, nothing happens.
# @param message [String]
# @param mailer [#send_message]
# @return [String, nil] a message sent, or `nil` if nothing was done
def send_message_to_client(client, message, mailer)
  email = client&.personal_info&.email
  mailer.send_message(email, message) unless email.nil?
end
