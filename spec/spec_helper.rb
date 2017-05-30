require 'nokogiri'

ROOT_PATH = File.expand_path('../..', __FILE__)
$LOAD_PATH << File.join(ROOT_PATH, 'lib')
SCHEMA_LOCATION = File.join(ROOT_PATH, 'schema')
ORIGINAL_SCHEMA = File.join(SCHEMA_LOCATION, 'mml_schema.yaml')
INVALID_YAML_SCHEMA = File.join(SCHEMA_LOCATION, 'invalid_yaml_schema.yaml')
XML_SCHEMA = File.join(SCHEMA_LOCATION, 'mml.xsd')
JSON_SCHEMA = File.join(SCHEMA_LOCATION, 'mml_schema.json')
INVALID_JSON_SCHEMA = File.join(SCHEMA_LOCATION, 'invalid_schema.json')
SAMPLE_LOCATION = File.join(ROOT_PATH, 'samples')
JSON_INSTANCE = File.join(SAMPLE_LOCATION, 'mml_sample.json')
INVALID_JSON = File.join(SAMPLE_LOCATION, 'invalid_sample.json')

require 'xml_schema_validator'
require 'json_schema_validator'
require 'yaml_schema_validator'
require 'json_validator'
