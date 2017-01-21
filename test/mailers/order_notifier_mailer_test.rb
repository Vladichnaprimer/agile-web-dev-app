require 'test_helper'

class OrderNotifierMailerTest < ActionMailer::TestCase
  test "received" do
    mail = OrderNotifierMailer.received
    assert_equal "Подтверждение заказа", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match /1 x Programming Ruby 1.9/, mail.body.encoded
  end

  test "shipped" do
    mail = OrderNotifierMailer.shipped
    assert_equal "Вам отправили заказ", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match /<td>1&times;<\/td>\s*<td>Programming Ruby 1.9<\/td>/, mail.body.encoded
  end

end
