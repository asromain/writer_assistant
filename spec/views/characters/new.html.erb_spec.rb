require 'spec_helper'

describe "characters/new" do
  before(:each) do
    assign(:character, stub_model(Character,
      :name => "MyString",
      :role => "MyString",
      :scene_id => 1
    ).as_new_record)
  end

  it "renders new character form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", characters_path, "post" do
      assert_select "input#character_name[name=?]", "character[name]"
      assert_select "input#character_role[name=?]", "character[role]"
      assert_select "input#character_scene_id[name=?]", "character[scene_id]"
    end
  end
end
