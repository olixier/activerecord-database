require 'active_record'
require "delegate"

ActiveRecord::Base.configurations = YAML::load(IO.read('database.yml'))
ActiveRecord::Base.establish_connection('development')

class Recipe < ActiveRecord::Base
  def to_s 
    "#{name} (#{length}min) - [#{'*'*difficulty}]"
  end
end


