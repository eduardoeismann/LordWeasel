
require 'find'

print ("Caminho do projeto: ")
path = gets.chomp() # Input the project path

path = 'e:\\projects\\LordWeasel\\HTML_Project\\' # It'll be removed. It's just to test.

$classes = Array.new # To store all classes found

$slash = "/"

$extension = [ # All the knew extensions in the project, except CSS.
	'html',
	'xhtml',
	'js'
]

def find_files( path )
	Find.find( "#{path}" ).select {
		|file|

		if $extension.any? { |word| file.include? ( word ) }
			puts ( "\nFile ->  " << file )
			
			File.open( "#{file}", "r" ) do |reading|
				reading.each_line do |line|
					if line.include? "class"
						puts ( "Line ->  " << line )
						
					end
				end
			end
		end
		
	}

	return 'ok'
	
end

find_files( path )
