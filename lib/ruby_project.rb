#!/usr/bin/env ruby
require 'pry'
require 'fileutils'

class Builder
  def initialize

  end

  def directories(project_name)
    FileUtils.mkdir("../#{project_name}")
  end
end
