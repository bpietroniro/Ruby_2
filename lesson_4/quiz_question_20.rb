mailing_campaign_leads = [
  {name: 'Emma Lopez', email: 'emma.lopez@some_mail.com', days_since_login: 423, mailing_list: true},
  {name: 'mike richards', email: 'michael.richards@some_mail.com', days_since_login: 23, mailing_list: false},
  {name: 'JANE WILLIAMS', email: 'jane_w95@my_mail.com', days_since_login: 16, mailing_list: true},
  {name: 'Ash Patel', email: 'ash_patel@my_mail.com', days_since_login: 22, mailing_list: true}
]

counter = 0

# iterating through mailing_campaign_leads array
loop do
  break if counter == mailing_campaign_leads.size
  # getting the "name" attribute for current array entry
  full_name = mailing_campaign_leads[counter][:name]
  # turning current name string into a word array
  names = full_name.split

  names_counter = 0
  # iterating through the word array representing current name
  loop do
    break if names_counter == names.size
    # CAPITALIZING FIRST AND LAST NAME
    name = names[names_counter]
    names[names_counter] = name.capitalize

    names_counter += 1
  end

  capitalized_full_name = names.join(' ')
  # replacing original name attribute with capitalized version
  mailing_campaign_leads[counter][:name] = capitalized_full_name

  counter += 1
end

usable_leads = []
counter = 0

# iterating through mailing_campaign_leads array
loop do
  break if counter == mailing_campaign_leads.size
  # getting the "days since login" attribute for current array entry
  last_login = mailing_campaign_leads[counter][:days_since_login]
  # getting the "mailing list" attribute for current array entry
  # (this presumably indicates whether the person has subscribed to the list)
  subscribed_to_list = mailing_campaign_leads[counter][:mailing_list]
  
  # determining whether the current person has logged in within the 
  # past two months, AND is subscribed to mailing list
  if last_login < 60 && subscribed_to_list
    # if both those are true, consider them a "lead" by adding them
    # to the NEW ARRAY "usable_leads"
    usable_leads << mailing_campaign_leads[counter]
  end

  counter += 1
end

puts mailing_campaign_leads
p usable_leads
