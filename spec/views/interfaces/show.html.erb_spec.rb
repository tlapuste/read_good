require 'rails_helper'

RSpec.describe "interfaces/show", type: :view do
  before(:each) do
    @interface = assign(:interface, Interface.create!(
      :read => false,
      :user => "User",
      :book => "Book"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/false/)
    expect(rendered).to match(/User/)
    expect(rendered).to match(/Book/)
  end
end
