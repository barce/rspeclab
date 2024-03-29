#---
# Excerpted from "The RSpec Book",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/achbd for more book information.
#---
module Codebreaker
  class Game
    def initialize(output)
      @output = output
    end
    
    def start(secret=nil)
      @secret = secret
      @output.puts 'Welcome to Codebreaker!' 
      @output.puts 'Enter guess:'
    end
    
    def guess(guess)
      # @secret.include?(guess[0]) ? @output.puts '-' : @output.puts ''
      # if guess[0] == @secret[0]
      mark = ''
      (0..3).each do |index|
        if exact_match?(guess, index)
          mark << '+'
        elsif number_match?(guess, index)
          mark << '-'
        end
      end
      @output.puts mark
    end

    def exact_match?(guess, index) 
      guess[index] == @secret[index]
    end

    def number_match?(guess, index)
      @secret.include?(guess[index])
    end

  end
end
