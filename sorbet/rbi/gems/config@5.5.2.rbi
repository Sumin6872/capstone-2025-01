# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `config` gem.
# Please instead update this file by running `bin/tapioca gem config`.


# source://config//lib/config/error.rb#1
module Config
  extend ::Config::Validation::Schema

  class << self
    # Loads and sets the settings constant!
    #
    # source://config//lib/config.rb#57
    def load_and_set_settings(*sources); end

    # Create a populated Options instance from a settings file. If a second file is given, then the sections of that
    # file will overwrite existing sections of the first file.
    #
    # source://config//lib/config.rb#42
    def load_files(*sources); end

    # source://config//lib/config.rb#72
    def local_setting_files(config_root, env); end

    # source://config//lib/config.rb#80
    def reload!; end

    # source://config//lib/config.rb#63
    def setting_files(config_root, env); end

    # @yield [_self]
    # @yieldparam _self [Config] the object that the method was called on
    #
    # source://config//lib/config.rb#35
    def setup; end
  end
end

# The main configuration backbone
#
# source://config//lib/config/configuration.rb#3
class Config::Configuration < ::Module
  # Accepts configuration options,
  # initializing a module that can be used to extend
  # the necessary class with the provided config methods
  #
  # @return [Configuration] a new instance of Configuration
  #
  # source://config//lib/config/configuration.rb#7
  def initialize(**attributes); end

  private

  # source://config//lib/config/configuration.rb#16
  def define_reader(name, default); end

  # source://config//lib/config/configuration.rb#28
  def define_writer(name); end
end

# source://config//lib/config/dry_validation_requirements.rb#4
module Config::DryValidationRequirements
  class << self
    # source://config//lib/config/dry_validation_requirements.rb#7
    def load_dry_validation!; end
  end
end

# source://config//lib/config/dry_validation_requirements.rb#5
Config::DryValidationRequirements::VERSIONS = T.let(T.unsafe(nil), Array)

# source://config//lib/config/error.rb#2
class Config::Error < ::StandardError; end

# source://config//lib/config/integrations/rails/railtie.rb#2
module Config::Integrations; end

# source://config//lib/config/integrations/rails/railtie.rb#3
module Config::Integrations::Rails; end

# source://config//lib/config/integrations/rails/railtie.rb#4
class Config::Integrations::Rails::Railtie < ::Rails::Railtie
  # source://config//lib/config/integrations/rails/railtie.rb#5
  def preload; end
end

# source://config//lib/config/options.rb#5
class Config::Options < ::OpenStruct
  include ::Enumerable
  include ::Config::Validation::Validate

  # An alternative mechanism for property access.
  # This let's you do foo['bar'] along with foo.bar.
  #
  # source://config//lib/config/options.rb#122
  def [](param); end

  # source://config//lib/config/options.rb#128
  def []=(param, value); end

  # source://config//lib/config/options.rb#17
  def add_source!(source); end

  # source://config//lib/config/options.rb#95
  def as_json(options = T.unsafe(nil)); end

  # source://config//lib/config/options.rb#133
  def collect; end

  # source://config//lib/config/options.rb#133
  def count; end

  # source://config//lib/config/options.rb#86
  def each(*args, &block); end

  # @return [Boolean]
  #
  # source://config//lib/config/options.rb#13
  def empty?; end

  # source://config//lib/config/options.rb#133
  def exit!; end

  # @return [Boolean]
  #
  # source://config//lib/config/options.rb#148
  def has_key?(key); end

  # @return [Boolean]
  #
  # source://config//lib/config/options.rb#144
  def key?(key); end

  # source://config//lib/config/options.rb#9
  def keys; end

  # look through all our sources and rebuild the configuration
  #
  # source://config//lib/config/options.rb#35
  def load!; end

  # source://config//lib/config/options.rb#133
  def max; end

  # source://config//lib/config/options.rb#139
  def maximum; end

  # source://config//lib/config/options.rb#99
  def merge!(hash); end

  # source://config//lib/config/options.rb#152
  def method_missing(method_name, *args); end

  # source://config//lib/config/options.rb#133
  def min; end

  # source://config//lib/config/options.rb#139
  def minimum; end

  # source://config//lib/config/options.rb#26
  def prepend_source!(source); end

  # look through all our sources and rebuild the configuration
  #
  # source://config//lib/config/options.rb#35
  def reload!; end

  # source://config//lib/config/options.rb#65
  def reload_from_files(*files); end

  # source://config//lib/config/options.rb#133
  def select; end

  # source://config//lib/config/options.rb#133
  def table; end

  # source://config//lib/config/options.rb#133
  def test; end

  # source://config//lib/config/options.rb#70
  def to_h; end

  # source://config//lib/config/options.rb#70
  def to_hash; end

  # source://config//lib/config/options.rb#90
  def to_json(*args); end

  # source://config//lib/config/options.rb#133
  def zip; end

  protected

  # Recursively converts Hashes to Options (including Hashes inside Arrays)
  #
  # source://config//lib/config/options.rb#178
  def __convert(h); end

  # source://config//lib/config/options.rb#165
  def descend_array(array); end

  private

  # @return [Boolean]
  #
  # source://config//lib/config/options.rb#159
  def respond_to_missing?(*args); end
end

# Some keywords that don't play nicely with Rails 7.*
#
# source://config//lib/config/options.rb#118
Config::Options::RAILS_RESERVED_NAMES = T.let(T.unsafe(nil), Array)

# Some keywords that don't play nicely with OpenStruct
#
# source://config//lib/config/options.rb#115
Config::Options::SETTINGS_RESERVED_NAMES = T.let(T.unsafe(nil), Array)

# source://config//lib/config/sources/yaml_source.rb#5
module Config::Sources; end

# Allows settings to be loaded from a "flat" hash with string keys, like ENV.
#
# source://config//lib/config/sources/env_source.rb#4
class Config::Sources::EnvSource
  # @return [EnvSource] a new instance of EnvSource
  #
  # source://config//lib/config/sources/env_source.rb#11
  def initialize(env, prefix: T.unsafe(nil), separator: T.unsafe(nil), converter: T.unsafe(nil), parse_values: T.unsafe(nil), parse_arrays: T.unsafe(nil)); end

  # Returns the value of attribute converter.
  #
  # source://config//lib/config/sources/env_source.rb#7
  def converter; end

  # source://config//lib/config/sources/env_source.rb#25
  def load; end

  # Returns the value of attribute parse_arrays.
  #
  # source://config//lib/config/sources/env_source.rb#9
  def parse_arrays; end

  # Returns the value of attribute parse_values.
  #
  # source://config//lib/config/sources/env_source.rb#8
  def parse_values; end

  # Returns the value of attribute prefix.
  #
  # source://config//lib/config/sources/env_source.rb#5
  def prefix; end

  # Returns the value of attribute separator.
  #
  # source://config//lib/config/sources/env_source.rb#6
  def separator; end

  private

  # Try to convert string to a correct type
  #
  # source://config//lib/config/sources/env_source.rb#82
  def __value(v); end

  # @return [Boolean]
  #
  # source://config//lib/config/sources/env_source.rb#77
  def consecutive_numeric_keys?(keys); end

  # source://config//lib/config/sources/env_source.rb#62
  def convert_hashes_to_arrays(hash); end
end

# source://config//lib/config/sources/hash_source.rb#3
class Config::Sources::HashSource
  # @return [HashSource] a new instance of HashSource
  #
  # source://config//lib/config/sources/hash_source.rb#6
  def initialize(hash); end

  # Returns the value of attribute hash.
  #
  # source://config//lib/config/sources/hash_source.rb#4
  def hash; end

  # Sets the attribute hash
  #
  # @param value the value to set the attribute hash to.
  #
  # source://config//lib/config/sources/hash_source.rb#4
  def hash=(_arg0); end

  # returns hash that was passed in to initialize
  #
  # source://config//lib/config/sources/hash_source.rb#11
  def load; end
end

# source://config//lib/config/sources/yaml_source.rb#6
class Config::Sources::YAMLSource
  # @return [YAMLSource] a new instance of YAMLSource
  #
  # source://config//lib/config/sources/yaml_source.rb#10
  def initialize(path, evaluate_erb: T.unsafe(nil)); end

  # Returns the value of attribute evaluate_erb.
  #
  # source://config//lib/config/sources/yaml_source.rb#8
  def evaluate_erb; end

  # returns a config hash from the YML file
  #
  # source://config//lib/config/sources/yaml_source.rb#16
  def load; end

  # Returns the value of attribute path.
  #
  # source://config//lib/config/sources/yaml_source.rb#7
  def path; end

  # Sets the attribute path
  #
  # @param value the value to set the attribute path to.
  #
  # source://config//lib/config/sources/yaml_source.rb#7
  def path=(_arg0); end
end

# source://config//lib/config/version.rb#2
Config::VERSION = T.let(T.unsafe(nil), String)

# source://config//lib/config/validation/error.rb#4
module Config::Validation; end

# source://config//lib/config/validation/error.rb#5
class Config::Validation::Error < ::Config::Error
  class << self
    # source://config//lib/config/validation/error.rb#7
    def format(v_res); end
  end
end

# source://config//lib/config/validation/schema.rb#6
module Config::Validation::Schema
  # source://config//lib/config/validation/schema.rb#12
  def schema(&block); end

  # Assigns schema configuration option
  #
  # source://config//lib/config/validation/schema.rb#8
  def schema=(value); end
end

# source://config//lib/config/validation/validate.rb#5
module Config::Validation::Validate
  # source://config//lib/config/validation/validate.rb#6
  def validate!; end

  private

  # source://config//lib/config/validation/validate.rb#17
  def validate_using!(validator); end
end
