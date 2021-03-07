# Bash static site generator
This shell script reads a regular text file (template, input-file) which contains meta-data (declared via @@).
This meta-data gets replaced by file contents from the *input-folder* (input/posts/...).
The result is a new file which gets stored under */docs*.

## How it works
*read template -> read blog posts -> replace meta-data in template with content from blog posts -> write the result to the output directory.*

- The template is located at *input/index.template* which is a regular html5-file.
- The blog posts are regular and plain text files located at *input/posts/...*
- The resulting file gets stored under /docs/... which makes it easy to use for github based, or other static content hosting, solutions.
- The shell script makes uses of common programming language "features" like variables or loops in order to provide some kind of flexibility
  - One could store an arbitrary number of files within /input/posts/... - they'll all get displayed within the generated page
  - The order of blog-posts is determined by their name - e.g. 01_01_2020 will get displayed before 03_07_2021 - simple.
  - Using variables, every directory or file used in this script can be modified as needed, feel free to do so!

## Usage
Simply call the shell-file in a given directory, like: 
> ./bssg.sh

