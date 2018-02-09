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
    
    lib_file = File.open("../#{@project_name}/lib/#{@project_name}.rb", "w")
    lib_file.puts('#!/usr/bin/env ruby')
    lib_file.close
  end
end
