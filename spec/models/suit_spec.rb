require 'rails_helper'

RSpec.describe Suit, :type => :model do
    subject {described_class.new( appid:"1",
      size: "32", gender: "male")}
    describe "Validations" do
        it "is valid with valid attributes" do
            expect(subject).to be_valid
        end
        it "is not valid without an appid" do
            subject.appid = nil
            expect(subject).to_not be_valid
        end
        it "is not valid without a size" do
            subject.size = nil
            expect(subject).to_not be_valid
        end
        it "is not valid without a gender" do
            subject.gender = nil
            expect(subject).to_not be_valid
        end
    end
end