
ACAD_ROOT = "C:/Program Files/Autodesk/AutoCAD Civil 3D 2012/"
CIVIL_FILE = "C:/Program Files/Autodesk/AutoCAD Civil 3D 2012/Help/Civil Tutorials/Drawings/Corridor-1a.dwg"
LOG_FILE = "C:/Civil 3D Projects/dynamic_load.xml"
TIME_OUT = 20

SCR_TEMPLATE =<<TEMPLATE
 (setvar "SDI" 1)
 (setvar "FILEDIA" 0)
 (arxload "%s")
 (arxunload "%s")
.open "#{CIVIL_FILE}"
.quit
Y
TEMPLATE

def find_rand_arx_dbx
	Dir.chdir(ACAD_ROOT)
	modules = Dir.glob("Aecc*.{arx,dbx}")
	index = rand(modules.length)
	return modules[index]
end

def kill_acad
	system("TASKKILL /F /IM acad.exe")
end

def find_acad
	`tasklist`.include?'acad'
end

def create_scr_file fileName
	content = SCR_TEMPLATE % [fileName,fileName]
	Dir.chdir(ACAD_ROOT)
	scr = File.new("load.scr", "w")
	scr.puts content
	scr.close
	return content
end


def run_test
	fileName = find_rand_arx_dbx
	steps = create_scr_file fileName
	log = File.new(LOG_FILE,"a")
	log.puts "<TestCase><Name>#{fileName}</Name><Steps>"
	log.puts steps
	log.puts "</Steps>"

	Dir.chdir(ACAD_ROOT)
	program = "'acad.exe' /P AutoCAD  /b load.scr"
	Thread.new {system(program)}
	sleep TIME_OUT
	log.puts "<Result>"
	if find_acad
		log.puts "Failed"
		kill_acad
	else
		log.puts "Pass"
	end
	log.puts "</Result></TestCase>"

	log.close
end


while true
	run_test
end





