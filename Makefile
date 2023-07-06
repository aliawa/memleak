# Name of your executable
MYEXE=mytst

# Put names of all object files here
# These will be the .c files with .c replaced with .o
OBJS=dmalloc_tst.o

# Select your compiler 
CC=gcc

# C compiler options for example -g 
MYCFLAGS=-g

# Where to find your include files that are not in this
# directory
MYINC_DIRS=-I/home/aawais/workspace/dmalloc-5.5.2

# Where to find your libraries
MYLIB_DIRS=-L/home/aawais/workspace/dmalloc-5.5.2

# The libraries you want to link to, for example to 
# link with libdmalloc.a put -ldmalloc
MYLIBS=-ldmalloc



# ----------------------------------------------

# Set variables for predefined rules
CFLAGS=$(MYCFLAGS) $(MYINC_DIRS)


$(MYEXE): $(OBJS)
	gcc $(MYCFLAGS)  $(MYLIB_DIRS) -o $@ $^ $(MYLIBS)

clean:
	rm $(OBJS)
