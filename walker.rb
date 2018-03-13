
require 'find'

print ("Caminho do projeto: ")
path = gets.chomp()

original_path = 'e:\\projects\\LordWeasel\\HTML_Project\\'
path = 'e:\\projects\\LordWeasel\\HTML_Project\\'

$slash = ""
if path.include? "/"
	$slash = "/"
else
	$slash = "\\"
end

$extension = [
	'html',
	'xhtml',
	'css',
	'js'
]

def find_files( original_path, path )
	Find.find( "#{path}" ).select {
		|file|
		
		if "#{file}".end_with? ("." << $extension[ 0 ])
			puts file
			
		elsif "#{file}".end_with? ("." << $extension[ 1 ])
			puts file
			
		elsif "#{file}".end_with? ("." << $extension[ 2 ])
			puts file
			
		elsif "#{file}".end_with? ("." << $extension[ 3 ])
			puts file
						
		end
		
	}

	return 'ok'
	
end

find_files( original_path, path )
