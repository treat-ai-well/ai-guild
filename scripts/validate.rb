#!/usr/bin/env ruby

require "json"
require "pathname"
require "yaml"

root = Pathname.new(__dir__).parent
errors = []

required_files = %w[
  README.md
  README.zh-CN.md
  PROTOCOL.md
  PROTOCOL.zh-CN.md
  LICENSE
  SECURITY.md
  CONTRIBUTING.md
  CODE_OF_CONDUCT.md
]

required_files.each do |name|
  errors << "missing required file: #{name}" unless root.join(name).file?
end

Dir[root.join(".github/ISSUE_TEMPLATE/*.yml")].sort.each do |file|
  YAML.safe_load(File.read(file), aliases: false)
rescue Psych::SyntaxError => error
  errors << "#{Pathname.new(file).relative_path_from(root)}: #{error.message}"
end

Dir[root.join("spec/*.json")].sort.each do |file|
  JSON.parse(File.read(file))
rescue JSON::ParserError => error
  errors << "#{Pathname.new(file).relative_path_from(root)}: #{error.message}"
end

Dir[root.join("**/*.md")].sort.each do |file|
  relative_file = Pathname.new(file).relative_path_from(root)
  File.read(file).scan(/\[[^\]]*\]\(([^)]+)\)/).flatten.each do |link|
    next if link.match?(%r{\A(?:https?://|mailto:|#)})

    target = link.split("#", 2).first
    next if target.empty?

    resolved = Pathname.new(file).dirname.join(target).cleanpath
    errors << "#{relative_file}: broken link #{link}" unless resolved.exist?
  end
end

declaration = YAML.safe_load(root.join("examples/adoption.yml").read, aliases: false)
schema = JSON.parse(root.join("spec/adoption.schema.json").read)

schema.fetch("required").each do |key|
  errors << "examples/adoption.yml: missing #{key}" unless declaration.key?(key)
end

schema.dig("properties", "commitments", "required").each do |key|
  value = declaration.fetch("commitments", {})[key]
  errors << "examples/adoption.yml: #{key} must be boolean" unless [true, false].include?(value)
end

if errors.empty?
  puts "Validation passed."
else
  warn errors.join("\n")
  exit 1
end
