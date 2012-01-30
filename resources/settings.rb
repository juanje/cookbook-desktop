actions :set, :unset

attribute :name, :kind_of => String, :name_attribute => true, :required => true
attribute :username, :kind_of => String, :required => true
attribute :value, :kind_of => String, :required => true
attribute :schema, :kind_of => String
attribute :type, :kind_of => String

def initialize(*args)
  super
  @action = :set
  @provider = :gsettings unless :schema.nil?
end
