##### W04 String manipulation 
## R looks for ﬁles on your computer relative to the “working” directory
## always safer to set the working directory at the beginning of your script

###  get  the  working  directory
getwd()

setwd("/Users/hsuc7/Documents/Github/rpractice01")
# setwd(”/Users/kok3/Documents/NIH/FASE/biof529")


###  working  directory

# The dir() function interfaces with your operating system and can show you which ﬁles are in your current working directory.
# You can try some directory navigation:

dir()  # show working directory

# [1] "Form_Outline.R"     "intersection().R"   "kds"               
# [4] "lec2_func.R"        "lec2_main_new.R"    "Lect2.csv"         
# [7] "Lecture3_new.pptx"  "persons.txt"        "practicecode2.R"   
# [10] "pums.R"             "PUMS5_06.TXT.short" "README.md"         
# [13] "rpractice01.Rproj"  "test001.R"          "W01_Lecture.R"     
# [16] "W02_Lecture.r"      "W02_temp.R"         "W03 code.r"        
# [19] "W04_Lecture.R"      "xcnew"              "z1.txt"            
# [22] "z2.txt"             "z3.txt"             "z4.txt"            


dir("./")  #  shows  working directory  contents
# [1] "Form_Outline.R"     "intersection().R"   "kds"               
# [4] "lec2_func.R"        "lec2_main_new.R"    "Lect2.csv"         
# [7] "Lecture3_new.pptx"  "persons.txt"        "practicecode2.R"   
# [10] "pums.R"             "PUMS5_06.TXT.short" "README.md"         
# [13] "rpractice01.Rproj"  "test001.R"          "W01_Lecture.R"     
# [16] "W02_Lecture.r"      "W02_temp.R"         "W03 code.r"        
# [19] "W04_Lecture.R"      "xcnew"              "z1.txt"            
# [22] "z2.txt"             "z3.txt"             "z4.txt"            


dir("..")  # showed current directory contents
# [1] "Genome"      "Mou"         "Note"        "Python"      "R_Git"      
# [6] "rpractice01" "rpractice02" "TTT"


dir("../..")  # showed document directory contents

# [1] "01 New Online Tool for Determinations.2.9.17.docx"   
# [2] "81 T_BTRIS"                                          
# [3] "81 T_Data"                                           
# [4] "81 T_Genome_BIOF450"                                 
# [5] "81 T_Python_BIOF309-W"                              


### Scan(): Read in a vector
# With a little extra work, you can even read in data to form a list

x1 <- scan("z3.txt",what="") # Read 4 items
x2 <- scan("z3.txt",what="",sep="\n") # Read 3 items
x1
# [1] "abc" "de" "f" "g"
x2
# [1] "abc" "de f" "g"
x1[2]
# [1] "de"
x2[2]
# [1] "de f"


### readline()
# Read in a single line from the keyboard
# Called with its optional prompt

w <- readline()
# abc de f
w
# [1] "abc de f”
inits <- readline("type your initials: ")
# NM
inits
# [1] "NM"


### Data Input
# ‘Reading in’ data is the ﬁrst step of any real project/analysis R can read almost any ﬁle format, especially via add-on packages
# text ﬁles
# tab delimited (e.g.  ‘.txt’)
# comma separated (e.g.  ‘.csv’)
# Microsoft excel (e.g.  ‘.xlsx’)

### Reading spreadsheet-like text ﬁles









