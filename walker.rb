
print ("Caminho do projeto: ")
path = gets.chomp()

originalPath = 'e:\\projects\\LordWeasel\\HTML_Project\\'
path = 'e:\\projects\\LordWeasel\\HTML_Project\\'

defaultSign = ""
if path.include? "/"
	defaultSign = "/"
else
	defaultSign = "\\"
end

extension = [
	'html',
	'xhtml',
	'css',
	'js'
]

def findFiles( originalPath, path )
	puts originalPath
	puts path
	return 'ok'
end

#findFiles( originalPath, path )

Dir.foreach( path ) {
	|x|
	
	if "#{x}" != '.' || "#{x}" != '..'
		if "#{x}".end_with? ("." << extension[ 0 ])
			puts "#{x}"
		elsif "#{x}".end_with? ("." << extension[ 1 ])
			puts "#{x}"
		elsif "#{x}".end_with? ("." << extension[ 2 ])
			puts "#{x}"
		elsif "#{x}".end_with? ("." << extension[ 3 ])
			puts "#{x}"
		elsif "#{x}" == '.' || "#{x}" == '..'
		else
			puts "#{x}" << defaultSign
			
		end
	
	end
	
}
