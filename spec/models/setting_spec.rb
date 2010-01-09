require 'spec_helper'

describe Setting do
  describe ".get_setting" do
    context "for an existant setting" do
      before(:each) do
        @setting = Factory(:setting)
      end
      
      it "returns the value" do
        Setting.get_setting(@setting.name).should == @setting.value
      end
    end
    
    context "for a non-existant setting" do
      it "returns nil" do
        Setting.get_setting("non-existant setting").should == nil
      end
    end
  end
  
  describe ".get_setting_bool" do
    context "for an existant setting" do
      before(:each) do
        @setting = Factory(:boolean_setting)
      end
      
      it "returns the value" do
        Setting.get_setting_bool(@setting.name).should == true
      end
    end
    
    context "for a non-existant setting" do
      it "returns nil" do
        Setting.get_setting_bool("non-existant setting").should == false
      end
    end
  end
end
