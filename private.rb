def sendtext
   
  # removed my sid/auth/mobile numbers for upload
  account_sid = 'ACf213fd0e0968cad4cf1d53ef5e2fe301'
  auth_token = 'f3a00b928bb594b9847b5253a4d5092c'
  client = Twilio::REST::Client.new(account_sid, auth_token)

  from = '+447723565836' # Your Twilio number
  to = '+447709018333' # Your mobile phone number

  client.messages.create(
  from: from,
  to: to,
  body: "Thank you! The total was £#{total} Your order was placed 
  and will be delivered before #{time}"
  )
end