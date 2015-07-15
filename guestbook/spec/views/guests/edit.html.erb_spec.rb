require 'rails_helper'

RSpec.describe "guests/edit", type: :view do
  before(:each) do
    @guest = assign(:guest, Guest.create!(
      :name => "MyString",
      :message => ""
    ))
  end

  it "renders the edit guest form" do
    render

    assert_select "form[action=?][method=?]", guest_path(@guest), "post" do

      assert_select "input#guest_name[name=?]", "guest[name]"

      assert_select "input#guest_message[name=?]", "guest[message]"
    end
  end
end
