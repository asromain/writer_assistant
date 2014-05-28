require 'spec_helper'

describe "anecdotes/edit" do
  before(:each) do
    @anecdote = assign(:anecdote, stub_model(Anecdote,
      :subject => "MyString",
      :description => "MyText",
      :chapter_id => 1
    ))
  end

  it "renders the edit anecdote form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", anecdote_path(@anecdote), "post" do
      assert_select "input#anecdote_subject[name=?]", "anecdote[subject]"
      assert_select "textarea#anecdote_description[name=?]", "anecdote[description]"
      assert_select "input#anecdote_chapter_id[name=?]", "anecdote[chapter_id]"
    end
  end
end
