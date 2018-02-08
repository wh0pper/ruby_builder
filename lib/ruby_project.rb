#!/usr/bin/env ruby
require 'pry'
require 'fileutils'

class Builder
  def initialize(project_name)
    @project_name = project_name
  end

  def directories
    FileUtils.mkdir("../#{@project_name}")
    FileUtils.mkdir("../#{@project_name}/lib")
    FileUtils.mkdir("../#{@project_name}/spec")
  end

  def clean
    FileUtils.rm_rf("../#{@project_name}")
  end
end
