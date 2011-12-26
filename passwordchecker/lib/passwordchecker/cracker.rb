module Passwordchecker
  class Cracker
    attr_accessor :password
    def initialize(output)
      @output = output
    end
    
    def start
      @output.puts 'Welcome to Password Checker!' 
      @output.puts 'Enter password:'
    end

    def input
      password = gets
      self.password = password.chomp
    end
  end
end
