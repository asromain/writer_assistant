require 'spec_helper'

describe "scenes/show" do
  before(:each) do
    @scene = assign(:scene, stub_model(Scene,
      :name => "Name",
      :narrative => "MyText",
      :place => "Place",
      :period => "Period",
      :chapter_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/Place/)
    rendered.should match(/Period/)
    rendered.should match(/1/)
  end
end
