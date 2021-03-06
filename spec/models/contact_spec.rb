require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Contact do
  before(:each) do
    @valid_attributes = {
    }
  end

  it "should create a new instance given valid attributes" do
    Contact.create!(@valid_attributes)
  end

  it { should have_many :freemailer_campaigns }
  it { should have_many :freemailer_campaign_contacts }
end
