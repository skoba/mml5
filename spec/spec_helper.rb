require 'nokogiri'

ROOT_PATH = File.expand_path('../..', __FILE__)
$LOAD_PATH << File.join(ROOT_PATH, 'lib')
SCHEMA_LOCATION = File.join(ROOT_PATH, 'schema')
XML_SCHEMA = File.join(SCHEMA_LOCATION, 'mml.xsd')
SAMPLE_LOCATION = File.join(ROOT_PATH, 'samples')

require 'mml_schema_validator'
