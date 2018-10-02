require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { FactoryBot.create :user}
  let(:invaliduser) { FactoryBot.build(:user, username: "aaaaa")}
  context "validations" do
    it "should have a name" do
      expect(user).to be_valid
    end
    it "has a name between 6 and 20 characters" do
      invaliduser.save
      expect(invaliduser.valid?).to eq(false)
    end
  end

end
