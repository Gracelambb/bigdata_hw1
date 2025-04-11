# Big Data Homework #1

This repository contains a shell script (`hw1_script.sh`) that completes Tasks 3 through 8 for the Big Data HW 1 assignment using Hadoop HDFS commands.

### ChatGPT Evaluation

Below is a summary of whether ChatGPT was able to solve each task correctly:

| Task | Description                                                                 | ChatGPT Solved Correctly? |
|------|-----------------------------------------------------------------------------|----------------------------|
| 3    | Create a new folder in Hadoop                                               | Yes                     |
| 4    | Move one file from local (on Wolf) to Hadoop folder                         | Yes                     |
| 5    | Rename the file inside Hadoop                                               | Yes                     |
| 6    | Copy the renamed file from Hadoop to the local filesystem                   | Yes                     |
| 7    | Create a new folder, upload two files, and use `getmerge` to concatenate    | Yes                     |
| 8    | Upload a different file to Hadoop and copy it to Tucker’s folder            | Yes                     |

---

### Prompts Used

- 3: Write a Linux shell command to create a new folder in Hadoop HDFS called `hw1_folder_1`. Do not create it in the local filesystem.
- 4: Write a Linux shell command to move a file named `file1.txt` that was uploaded to Wolf into the HDFS folder `hw1_folder_1`.
- 5: Write a Linux shell command to rename the file `file1.txt` in the HDFS folder `hw1_folder_1` to `hw1_rename.txt`.
- 6: Write a Linux shell command to copy the file `hw1_rename.txt` from HDFS back to the local filesystem. Save the local copy as `hw1_rename_copy.txt`.
- 7: Write a set of Linux shell commands to:
  - 1. Create a second HDFS folder called `hw1_folder_2`
  - 2. Upload two small text files (`file1.txt` and `file2.txt`) to `hw1_folder_2`
  - 3. Use the `hdfs dfs -getmerge` command to extract and concatenate the two files into a single local file named `merged.txt`
- Write Linux shell commands to: Upload a local file named `file1.txt` to the current directory in HDFS, then copy that file inside HDFS to Tucker’s folder at `/user/mtl8754/`

### GPT code

##### Task 3:
```bash
hdfs dfs -mkdir hw1_folder_1
```

##### Task 4:
```bash
hdfs dfs -put file1.txt hw1_folder_1/
```

##### Task 5:

```bash
hdfs dfs -mv hw1_folder_1/file1.txt hw1_folder_1/hw1_rename.txt
```

##### Task 6:

```bash
hdfs dfs -get hw1_folder_1/hw1_rename.txt hw1_rename_copy.txt
```

##### Task 7:

```bash
hdfs dfs -mkdir hw1_folder_2
hdfs dfs -put file1.txt file2.txt hw1_folder_2/
hdfs dfs -getmerge hw1_folder_2/ merged.txt
```

##### Task 8:
```bash
hdfs dfs -put file3.txt .
hdfs dfs -cp file3.txt /user/mtl8754/

```




