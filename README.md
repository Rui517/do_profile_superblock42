# do_profile_superblock42

I did some changes in "do_compiler_superblock42.sci"file.
Firstly, I changes "call_block42"function to add start,end and total time to execute time of every block in superblock.
Next, I did changes in "make_computational42" function. I create a json and I transfer execution time to json file.
For complex model(A superblock has another superblock inside), Json file could present sum of time of external superblock. Below external superblock, there are execution time of every inside superblock. It has sum of time of every inside superblock and single blocks in superblock.
Eventually, I make a "Profiler.sci" file to present json result in workspace. If the user enter the path of model, it will present json result of this model in workspace
