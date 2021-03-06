require 'test_helper'

class ContactTest < ActiveSupport::TestCase
  should_have_many :tags
  should_have_many :taggings

  test "state length" do
    dan = get_a_contact 
    dan.state = 'fsdf'
    if dan.valid?
      assert false
    else
      assert true
    end
  end

  test "country length" do
    dan = get_a_contact 
    dan.country = 'fsdasdf'
    if dan.valid?
      assert false
    else
      assert true
    end
  end

  test 'relations' do
    c = get_a_contact 
    assert_respond_to c, :contact_emails
    assert_respond_to c, :notes
  end

end
