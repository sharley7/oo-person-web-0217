class Person
attr_reader :name, :salary
attr_accessor :bank_account, :hygiene, :happiness

  def initialize (name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
end

  def happiness=(new_happiness)
   @happiness = new_happiness
   if new_happiness >= 10
      @happiness = 10
   elsif new_happiness <= 0
       @happiness = 0
    end
  end

  def hygiene=(new_hygiene)
    @hygiene = new_hygiene
   if new_hygiene >= 10
      @hygiene = 10
   elsif new_hygiene <= 0
     @hygiene = 0
    end
  end

  def happy?
    if happiness > 7
      true
    else
      false
    end
  end

  def clean?
    if hygiene > 7
      true
    else
      false
    end
  end

  def get_paid (salary)
    self.bank_account += salary
    "all about the benjamins"
  end

  def take_bath
     bathed = hygiene + 4
     self.hygiene=(bathed)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    new_hygiene = hygiene - 3
    self.hygiene=(new_hygiene)
    endorphins = happiness + 2
    self.happiness=(endorphins)
    "♪ another one bites the dust ♫"
  end

  def call_friend (friend)
     new_happiness = happiness + 3
     friend_happiness = friend.happiness + 3
     self.happiness=(new_happiness)
     friend.happiness=(friend_happiness)
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

   def start_conversation (human, topic)
     if topic == "politics"
       new_self_happiness = happiness - 2
       new_person_happiness = happiness - 2
       self.happiness=(new_self_happiness)
       human.happiness=(new_person_happiness)
       'blah blah partisan blah lobbyist'
     elsif topic == "weather"
       new_self_happiness = happiness + 1
       new_person_happiness = happiness + 1
       self.happiness=(new_self_happiness)
       human.happiness=(new_person_happiness)
       "blah blah sun blah rain"
     else
       "blah blah blah blah blah"
     end
   end


end
