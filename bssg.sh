#!/bin/bash

# where data gets used from to generate text content
inputFolder=input
postsData=$inputFolder/posts

# where data gets stored for generated text content
outputFolder=output/

# a handle for the currently used file
file=input/posts/07_03_2021/Hello_World.txt

# the file which is used as a template to generate a valid html file
templateFile=$input/index.template


echo "Using $inputFolder for input-data"
echo "Using $outputFolder for file-generation"
echo ""

# modify the templates contents with blog posts articles
#  generated_output=`sed -e "/@@blog_posts@@/{r $file" -e "d}" input/index.template | cat`
#  echo $generated_output


# write the modified contents into the resulting file
# echo $generated_output > $outputFolder/index.html

echo "Collecting posts ..."
echo ""

# read and cache the template file
generated_content=`cat input/index.template`

# variable for caching article content
read_content=

# iterate over directories in blog post directory
# f.e. - input/posts/...
for fileDirectory in "$postsData"/*
do
	# iterate over files within current directory 
    # e.g. - input/posts/03_02_2020/...
	for file in "$fileDirectory"/*
	do
		# we have found a file - ...
		echo "Found file: $file"

		# ... so read it 
		read_content+=`cat $file`
		
		# ... and start operating on it
		# well		

		# append some linebreaks 
		read_content+="<br>"
	done

done

# replace the previously generated content with the content from the template
# and write it to the corresponding output folder & file
echo "${generated_content/@@blog_posts@@/$read_content}" > $outputFolder/index.html



