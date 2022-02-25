require 'pry'
# your code goes here
class Person
    attr_accessor :happiness, :hygiene
    attr_reader :name, :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def bank_account=(bank_account)
        @bank_account = bank_account
    end

    def happiness=(happiness)
        @happiness = happiness.clamp(0,10)
    end

    def hygiene=(hygiene)
        @hygiene = hygiene.clamp(0,10)
    end

    def happy?
        self.happiness > 7 ? true : false
    end

    def clean?
        self.hygiene > 7 ? true : false
    end

    def get_paid(amount)
        @bank_account = @bank_account + amount 
        p "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        pp '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        pp '♪ another one bites the dust ♫'
    end

    def call_friend(person_input)
        self.happiness += 3
        person_input.happiness +=3
        pp "Hi #{person_input.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        pp friend
        pp topic
        case topic
        when "politics"
            self.happiness -=2
            friend.happiness -=2
            pp "blah blah partisan blah lobbyist"
        when "weather"
            self.happiness += 1
            friend.happiness += 1
            pp "blah blah sun blah rain"
        else 
            "blah blah blah blah blah"
        end

    end
    

# binding.pry
end
