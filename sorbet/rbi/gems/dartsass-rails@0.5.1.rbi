# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `dartsass-rails` gem.
# Please instead update this file by running `bin/tapioca gem dartsass-rails`.


# source://dartsass-rails//lib/dartsass-rails.rb#1
module Dartsass; end

# source://dartsass-rails//lib/dartsass/engine.rb#4
class Dartsass::Engine < ::Rails::Engine
  class << self
    private

    # source://activesupport/8.0.1/lib/active_support/class_attribute.rb#15
    def __class_attr___callbacks; end

    # source://activesupport/8.0.1/lib/active_support/class_attribute.rb#17
    def __class_attr___callbacks=(new_value); end
  end
end

# source://dartsass-rails//lib/dartsass/version.rb#2
Dartsass::VERSION = T.let(T.unsafe(nil), String)
