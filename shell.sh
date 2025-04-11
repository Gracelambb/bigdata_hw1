# Task 3: Create a new folder in Hadoop
hdfs dfs -mkdir hw1_folder_1

# Task 4: Move a file from local to Hadoop (assumes file1.txt is already on Wolf)
hdfs dfs -put file1.txt hw1_folder_1/

# Task 5: Rename this file in Hadoop
hdfs dfs -mv hw1_folder_1/file1.txt hw1_folder_1/hw1_rename.txt

# Task 6: Copy this file from Hadoop to the local filesystem
hdfs dfs -get hw1_folder_1/hw1_rename.txt hw1_rename_copy.txt

# Task 7: Create a second folder in Hadoop and merge two files
hdfs dfs -mkdir hw1_folder_2
hdfs dfs -put file1.txt hw1_folder_2/
hdfs dfs -put file2.txt hw1_folder_2/
hdfs dfs -getmerge hw1_folder_2/ merged.docx

# Task 8: Move a file from local to Hadoop and copy it to another user's folder
hdfs dfs -put file3.txt .
hdfs dfs -cp file3.txt /user/mtl8754/
