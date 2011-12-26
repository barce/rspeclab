module Passwordchecker
  class Cracker
    def initialize(output)
      @output = output
    end
    
    def start
      @output.puts 'Welcome to Password Checker!' 
      @output.puts 'Enter password:'
    end
  end
end
