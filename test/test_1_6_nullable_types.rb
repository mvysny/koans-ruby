# frozen_string_literal: true

require 'minitest/autorun'
require '1_6_nullable_types'

class TestSendMessageToClient < Minitest::Test
  def test_nil_client
    assert_nil send_message_to_client(nil, 'foo', Mailer.new)
  end

  def test_client_with_nil_info
    assert_nil send_message_to_client(Client.new(nil), 'foo', Mailer.new)
  end

  def test_client_with_nil_email
    assert_nil send_message_to_client(Client.new(PersonalInfo.new(nil)), 'foo', Mailer.new)
  end

  def test_non_nil_message
    assert_equal "Sender: foo@bar.baz\n\nFoo",
                 send_message_to_client(Client.new(PersonalInfo.new('foo@bar.baz')), 'Foo', Mailer.new)
  end
end
