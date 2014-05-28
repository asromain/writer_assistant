require 'spec_helper'

describe "chapters/new" do
  before(:each) do
    assign(:chapter, stub_model(Chapter,
      :number => 1,
      :title => "MyString"
    ).as_new_record)
  end

  it "renders new chapter form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", chapters_path, "post" do
      assert_select "input#chapter_number[name=?]", "chapter[number]"
      assert_select "input#chapter_title[name=?]", "chapter[title]"
    end
  end
end
