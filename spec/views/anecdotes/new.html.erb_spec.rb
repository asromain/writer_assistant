require 'spec_helper'

describe "anecdotes/new" do
  before(:each) do
    assign(:anecdote, stub_model(Anecdote,
      :subject => "MyString",
      :description => "MyText",
      :chapter_id => 1
    ).as_new_record)
  end

  it "renders new anecdote form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", anecdotes_path, "post" do
      assert_select "input#anecdote_subject[name=?]", "anecdote[subject]"
      assert_select "textarea#anecdote_description[name=?]", "anecdote[description]"
      assert_select "input#anecdote_chapter_id[name=?]", "anecdote[chapter_id]"
    end
  end
end
