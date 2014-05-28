require 'spec_helper'

describe "anecdotes/index" do
  before(:each) do
    assign(:anecdotes, [
      stub_model(Anecdote,
        :subject => "Subject",
        :description => "MyText",
        :chapter_id => 1
      ),
      stub_model(Anecdote,
        :subject => "Subject",
        :description => "MyText",
        :chapter_id => 1
      )
    ])
  end

  it "renders a list of anecdotes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Subject".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
