% Knowledge Base for specific types of questions
response("how", "services", "How can I help you today with our services?").
response("how", "cost", "How can I assist you with information about our costs?").
response("what", "services", "We offer social media marketing, website development, and digital advertising services.").
response("what", "cost", "Our pricing varies depending on the specific services you are interested in. Please contact us for a personalized quote.").

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