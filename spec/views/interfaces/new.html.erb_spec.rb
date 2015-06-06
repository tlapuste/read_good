require 'rails_helper'

RSpec.describe "interfaces/new", type: :view do
  before(:each) do
    assign(:interface, Interface.new(
      :read => false,
      :user => "MyString",
      :book => "MyString"
    ))
  end

  it "renders new interface form" do
    render

    assert_select "form[action=?][method=?]", interfaces_path, "post" do

      assert_select "input#interface_read[name=?]", "interface[read]"

      assert_select "input#interface_user[name=?]", "interface[user]"

      assert_select "input#interface_book[name=?]", "interface[book]"
    end
  end
end
