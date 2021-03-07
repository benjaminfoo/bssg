# Bash static site generator
This shell script uses a simple text file as a template (input-file) and replaces meta-data in the given file with contents from other files (blog-posts for example).

## How it works
*read template -> read blog posts -> replace meta-data in template with content from blog posts -> write the result to the output directory.*

- The template is located at *input/index.template* which is a regular html5-file.
- The blog posts are regular and plain text files located at *input/posts/...*
- The resulting file gets stored under /docs/... which makes it easy to use for github based, or other static content hosting, solutions.

## Usage
Simply call the shell-file in a given directory, like: 
> ./bssg.sh

