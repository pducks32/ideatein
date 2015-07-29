require 'spec_helper'

describe Ideatein do
  it 'has a version number' do
    expect(Ideatein::VERSION).not_to be nil
  end

  describe "#authentication_cookies" do
    it "allows set without errors" do
      expect{ Ideatein.authentication_cookies = "Foobar" }.to_not raise_error
    end

    it "is able to remember the value" do
      Ideatein.authentication_cookies = "Foobar"
      expect(Ideatein.authentication_cookies).to eq "Foobar"
    end
  end
end
