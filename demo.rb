require_relative 'lib/harpia'

Harpia.config do |c|
  c.file_path = "tmp"
  c.export_opts = [
    { format: :md, filename: 'TODO', export: true },
    { format: :json, filename: 'TODO', export: true },
    { format: :txt, filename: 'TODO', export: false },
  ]
end

def method
  Harpia.new_todo('We need to do this.')
end

def method_2
  Harpia.new_fixme
  Harpia.new_fixme
  Harpia.new_fixme('fix me please')
end

method
method_2
method
Harpia.new_todo