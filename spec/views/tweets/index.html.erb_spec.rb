require 'rails_helper'

RSpec.describe "tweets/index", type: :view do
  before(:each) do
    assign(:tweets, [
      Tweet.create!(
        :message => "Message"
      ),
      Tweet.create!(
        :message => "Message"
      )
    ])
  end

  it "renders a list of tweets" do
    render
    assert_select "tr>td", :text => "Message".to_s, :count => 2
  end
end
