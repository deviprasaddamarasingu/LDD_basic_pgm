#include<linux/init.h>
#include<linux/module.h>

MODULE_LICENSE("GPL");
MODULE_AUTHOR("CDAC");

static int hello_init(void)
{
    printk("Hello world ...\n");
    return 0;
}

static int hello_exit(void)
{
    printk("Bye for now .. \n");
    return 0;
}

module_init(hello_init);
module_exit(hello_exit);
