# your code goes here
# your code goes here
require 'pry'
class Person
   attr_accessor :bank_account, :happiness, :hygiene
   attr_reader :name
    def initialize(name) #bank_account=25, happiness_points, hygience_points)
       @name= name
       @bank_account = 25
       @happiness = 8
       @hygiene = 8
   end
   def happiness=(happiness)
       if happiness > 10
       @happiness = 10
       elsif happiness < 0
       @happiness = 0
       else
       @happiness = happiness
       end
   end
   def hygiene=(hygiene)
       if hygiene > 10
       @hygiene = 10
       elsif hygiene < 0
       @hygiene = 0
       else
       @hygiene = hygiene
       end
   end
   def happy?
       if @happiness > 7
           true
       else
           false
       end
   end
   def clean?
       if @hygiene > 7
           true
       else
           false
       end
   end
   def get_paid(salary_amount)
       @bank_account += salary_amount
       return "all about the benjamins"
   end
   def take_bath
       @hygiene += 4
       self.hygiene = hygiene
       return "♪ Rub-a-dub just relaxing in the tub ♫"
   end
   def work_out
       @happiness += 2
       @hygiene -= 3
       self.hygiene = hygiene
       self.happiness = happiness
       return "♪ another one bites the dust ♫"
   end
   def call_friend(friend)
       # friend  = Person.new(friend)
       friend.happiness += 3
       @happiness += 3
       self.happiness = happiness
       return "Hi #{friend.name}! It's #{self.name}. How are you?"
   end

   def start_conversation(friend, topic)
       if topic == "politics"
         friend.happiness -= 2
         self.happiness -=2
         "blah blah partisan blah lobbyist"
       elsif topic == "weather"
         friend.happiness += 1
         self.happiness += 1
         "blah blah sun blah rain"
       else
         "blah blah blah blah blah"
       end
     end
end