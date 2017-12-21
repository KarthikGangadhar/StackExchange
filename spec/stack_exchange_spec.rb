require 'spec_helper'

describe StackExchange do
 
  before(:all) do
    @output = StackExchange::process("hello")
  end
  
  describe '#process' do
    it 'returns hello string' do
      expect(@output).to eq("hello")
    end

  end      
  
end