import sys

def main():
	my_file =  sys.argv[1]
	f=open(my_file, "r")
	# contents = f.read()
	lines = 0;
	l = f.readlines()
	print("Here is file you sent me:\n", file = sys.stderr)
	for x in l:
		lines = lines + 1
		print(x, file=sys.stderr)
	print(lines)
main()

5 fields added to assingment table:
grade, rubrik, command, grading_script, argument
grade and rubrik are visible to both admin and user.  The other three are only visible to admin.
rubrik and grading_script are actually links to files.

When the assignment is uploaded it is copied into a temporary directory. A string comprised of Command+ " " + grading_script + " " + argument + " " + student_uploaded_file is passed to  
stdout, stderr, status = Open3.capture3( <string here> )  
note: you will have to change the present working directory to this temp directory before running the open3 cmd.

stdout is posted as a grade in the assignment view.  stderr is saved as a text file called user_name_assignment_name_rubric .  the student_uploaded_file and the rubrik is copied from the temp file into the folder we were using before. A link to the rubrik file is shown in the assignment view.


