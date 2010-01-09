class Setting < ActiveRecord::Base
  validates_uniqueness_of :name
  validates_presence_of :name, :value
  
  def validate
  end

 
  def self.get_setting(name) # get a setting from the database
    setting = Setting.find(:first, :conditions => ["name = ?", name] )
    setting.try(:value)
  end
 
  def self.get_setting_bool(name) # get a setting from the database return true or false depending on "1" or "0"
    # TODO refactor without conditional; check all client code first
    if get_setting(name) == "1"
      true
    else # not true
      false
    end
  end  
end
