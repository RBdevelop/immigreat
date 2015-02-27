require 'rails_helper'

RSpec.describe "tweets/show", type: :view do
  before(:each) do
    @tweet = assign(:tweet, Tweet.create!(
      :message => "Message"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Message/)
  end
end
