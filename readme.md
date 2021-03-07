# Bash static site generator
This shell script uses a simple text file as a template (input-file) and replaces meta-data in the given file with contents from other files (blog-posts for example).
It works like this: 
read template -> read blog posts -> replace meta-data in template with content from blog posts -> write the result to the output directory.

## Usage
Simply call ./bssg.sh in a given directory.


