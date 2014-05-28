require 'spec_helper'

describe "chapters/show" do
  before(:each) do
    @chapter = assign(:chapter, stub_model(Chapter,
      :number => 1,
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Title/)
  end
end
