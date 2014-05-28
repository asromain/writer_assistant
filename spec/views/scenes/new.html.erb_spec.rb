require 'spec_helper'

describe "scenes/new" do
  before(:each) do
    assign(:scene, stub_model(Scene,
      :name => "MyString",
      :narrative => "MyText",
      :place => "MyString",
      :period => "MyString",
      :chapter_id => 1
    ).as_new_record)
  end

  it "renders new scene form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", scenes_path, "post" do
      assert_select "input#scene_name[name=?]", "scene[name]"
      assert_select "textarea#scene_narrative[name=?]", "scene[narrative]"
      assert_select "input#scene_place[name=?]", "scene[place]"
      assert_select "input#scene_period[name=?]", "scene[period]"
      assert_select "input#scene_chapter_id[name=?]", "scene[chapter_id]"
    end
  end
end
