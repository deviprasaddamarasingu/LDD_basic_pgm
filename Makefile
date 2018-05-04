#specify the output file 
obj-m := LDD_sample.o

#setup the variables
KERN_SRC = /lib/modules/$(shell uname -r)/build 
PWD = $(shell pwd)

#make target for compiling the modules
modules :
	make -C $(KERN_SRC) M=$(PWD) modules

#make target for cleaning up the space
clean :
	make -C $(KERN_SRC) m=$(PWD) clean



