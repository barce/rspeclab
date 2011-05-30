require 'spec_helper'

module Passwordchecker
  describe Cracker do
    describe "#start" do
      # using let instead of each.
      # use let when
      let(:output) { double('output').as_null_object }
      let(:cracker) { Cracker.new(output) }

      it "sends a welcome message" do
        output.should_receive(:puts).with('Welcome to Password Checker!') 
        cracker.start
      end 

      it "prompts for a password" do
        output.should_receive(:puts).with('Enter password:')
        cracker.start
      end 
    end
  end
end

