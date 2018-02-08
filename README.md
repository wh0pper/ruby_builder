# Ruby Project Generator
Ruby script to set up a new ruby project

#### By Jared Clemmensen & Russell Hofvendahl

## Description
Takes user inputs to create named directories, files and preliminary content for a basic ruby application.

## Specifications
* Method takes name of project, creates directories
  * Example Input: "hello_world"
  * Example Output: root directory "hello_world", "hello_world/lib" directory, "hello_world/spec" directory
* Method creates necessary files.
  * Example Input:
  * Example Output: hello_world_script.rb, Gemfile, README, lib/hello_world.rb, spec/hello_world_spec.rb
* Method takes name desired classes, adds skeleton code to necessary files
  * Example Input: "hello"
  * Example Output: in lib/hello_world.rb, append "class Hello...end"
* Method takes name desired classes, adds skeleton code to specs
  * Example Input: "hello"
  * Example Output: in spec append "describe ('Hello') do...end"
* Method takes input to populate README
  * Example Input: "Name and Date"
  * Example Output: appends README with license and author info
  
## Setup/Installation Requirements


## Technologies Used


### License

Copyright (c) 2018 Jared Clemmensen and Russell Hofvendahl

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
