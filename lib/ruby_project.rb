#!/usr/bin/env ruby
require 'pry'
require 'fileutils'

class Builder
  include FileUtils

  def initialize(project_name)
    @project_name = project_name
  end

  def clean
    FileUtils.rm_rf("../#{@project_name}")
  end

  def directories
    FileUtils.mkdir("../#{@project_name}")
    FileUtils.mkdir("../#{@project_name}/lib")
    FileUtils.mkdir("../#{@project_name}/spec")
  end

  def files
    FileUtils.touch("../#{@project_name}/lib/#{@project_name}.rb")
    FileUtils.touch("../#{@project_name}/spec/#{@project_name}_spec.rb")
    FileUtils.touch("../#{@project_name}/Gemfile")
    FileUtils.touch("../#{@project_name}/#{@project_name}_script.rb")
    FileUtils.touch("../#{@project_name}/README.md")
  end

  def content
    script_file = File.open("../#{@project_name}/#{@project_name}_script.rb", "w")
    script_file.write("#!/usr/bin/env ruby\n")
    script_file.close
    lib_file = File.open("../#{@project_name}/lib/#{@project_name}.rb", "w")
    lib_file.write("require 'pry'\n\nclass Builder\n  def initialize()\n\n  end\n\nend\n")
    lib_file.close

  end
end
