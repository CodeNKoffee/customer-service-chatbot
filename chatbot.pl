% Responses for "how" questions
response("how", "subscribe", "You can subscribe to our newsletter on our website.").
response("how", "support", "You can reach our support team via email or our support hotline.").
response("how", "refund", "To request a refund, please contact our customer service with your order details.").
response("how", "delivery", "Delivery times vary by location. Please check our shipping information page for details.").

% Responses for "what" questions
response("what", "subscribe", "You will receive regular updates and exclusive offers by subscribing to our newsletter.").
response("what", "support", "Our support team can assist you with any issues or questions you have.").
response("what", "refund", "Our refund policy allows you to request a refund within 30 days of purchase.").
response("what", "delivery", "We offer standard, express, and overnight delivery options. Check our delivery page for more info.").

% Responses for "when" questions
response("when", "support", "Our support team is available 24/7 to assist you.").
response("when", "delivery", "Delivery times depend on your location and the shipping option you choose.").
response("when", "offers", "We regularly update our offers and promotions. Subscribe to our newsletter to stay informed.").

% Responses for "where" questions
response("where", "support", "You can find our support teams contact details on our support page.").
response("where", "office", "Our office is located at 1234 Main Street, Anytown, USA.").
response("where", "delivery", "We deliver to most locations worldwide. Check our delivery page for more details.").

% Responses for "who" questions
response("who", "contact", "You can contact our customer service team for any inquiries.").
response("who", "manager", "Our customer service manager is John Doe.").
response("who", "founder", "Our company was founded by Jane Smith in 2010.").

% Responses for "why" questions
response("why", "subscribe", "Subscribing to our newsletter keeps you updated on the latest offers and news.").
response("why", "choose", "You should choose us for our commitment to quality and excellent customer service.").
response("why", "refund", "We offer refunds to ensure customer satisfaction with our products.").

% Predicate to turn String into separate words
split_string_into_words(String, Words):- 
  split_string(String, " ", "", Words).

% Preficate to handle user queries
handle_query(Question, Answer):- 
  split_string_into_words(Question, [FirstWord|RestOfWords]),
  check_response(FirstWord, Keyword, Answer), !.

% Predicate to check the response based on the first word and keywords
check_response(FirstWord, Keyword, Answer):-
  response(FirstWord, Keyword, Answer),
  memeber(Keyword, RestOfWords), !.

% Default response for unrecognized queries
check_response(_, _, "I am sorry, I did not understand your question. Could you please rephrase your question"). 