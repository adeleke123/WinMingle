### **How to add this to your project:**
1. Open your terminal in the `week1_assignment` folder.
2. Run `vi README.md`.
3. Press `i` to enter Insert mode, paste the text below, then press `Esc` and type `:wq` to save.

***

```markdown
# Week 1: Shell Navigation & Vim 🐧

This repository contains the completed tasks for the Week 1 Systems Engineering assignment. The project focuses on mastering the Linux command line, navigating the file system, manipulating files and directories, and utilizing the Vim text editor for efficient text manipulation.

**Author:** Adeleke

---

## 🛠️ Technologies & Tools
* **OS:** Ubuntu / Linux environment
* **Shell:** Bash
* **Editor:** Vim
* **Version Control:** Git

---

## 📂 Project Structure
The assignment is divided into two primary modules:
1. **0x00. Shell, navigation:** Creating, moving, and managing files/directories using core bash commands (`ls`, `cd`, `pwd`, `cp`, `mv`, `rm`, `mkdir`, `cat`, `head`, `tail`, `tar`, `zip`).
2. **0x00. Vi:** Advanced text editing, buffer management, macros, and environment configuration (`.vimrc`).

---

## 📝 Assignment Questions

<details>
<summary><b>Part 1: 0x00. Shell Navigation (60 Tasks)</b></summary>
<br>

**Basic Navigation & Creation**
1. Create a folder named `week1_assignment`.
2. Navigate into `week1_assignment`.
3. Create a folder named `projects` inside `week1_assignment`.
4. Create a folder named `notes` inside `week1_assignment`.
5. Create a text file named `hello.txt` inside `week1_assignment`.
6. Write the line `Hello WinMingle` inside `hello.txt`.
7. Inside `projects/`, create a folder named `week1_project`.
8. Inside `week1_project/`, create an empty file named `main.sh`.
9. Inside `week1_project/`, create another file named `readme.md` with the content `This is my first project`.
10. Go back to `week1_assignment`.

**Working with Notes**
11. Inside `notes/`, create a file named `day1.txt`.
12. Write `Learning shell navigation` inside `day1.txt`.
13. Inside `notes/`, create another file `day2.txt`.
14. Write `Second day of practice` inside `day2.txt`.
15. Inside `notes/`, create a file `day3.txt` with `Third day assignment`.
16. Inside `notes/`, create a hidden file `.secret.txt` with `hidden knowledge`.
17. Append `More practice coming` into `day2.txt`.
18. Concatenate `day1.txt` and `day2.txt` into `summary.txt`.
19. Count the number of lines in `summary.txt` and save into `count.txt`.
20. Copy `summary.txt` into the `backup` folder.

**System Operations**
21. From `week1_assignment`, list all contents and save the output into `listing.txt`.
22. Inside `week1_assignment`, create a hidden folder named `.config`.
23. Inside `.config/`, create a file `settings.conf` with the content `version=1.0`.
24. Rename the file `hello.txt` to `welcome.txt`.
25. Copy `welcome.txt` into the `notes/` folder.
26. Move `listing.txt` into the `projects/` folder.
27. Inside `week1_assignment`, create a folder `backup`.
28. Copy the entire `notes/` folder into `backup/`.
29. Print the current working directory into `pwd.txt`.
30. Append `echo Done!` to `main.sh`.

**Symbolic Links & Metadata**
31. Create a symbolic link named `latest_notes` pointing to the `notes/` folder.
32. Create a file `userinfo.txt` containing your full name.
33. Use `cat` to display `userinfo.txt` and append the output into `notes/day2.txt`.
34. Compress the entire `week1_assignment` folder into `week1_assignment.zip`.
35. Inside `week1_project/`, create a hidden folder `.gitignore_test`.
36. Inside `.gitignore_test/`, create `ignore.txt` with `ignore this`.
37. Create a copy of `userinfo.txt` in `projects/` as `userinfo_copy.txt`.
38. Create a folder `logs/` inside `week1_assignment`.
39. Inside `logs/`, create a file `access.log` with text `log started`.
40. Append `log ended` into `logs/access.log`.

**More Practice**
41. Inside `week1_assignment`, create `draft.txt` with the text `temporary work`.
42. Move `draft.txt` into `backup/`.
43. Create a file `numbers.txt` with numbers 1 to 10 (one per line).
44. Use `head` to extract the first 5 lines of `numbers.txt` into `first5.txt`.
45. Use `tail` to extract the last 5 lines of `numbers.txt` into `last5.txt`.
46. Merge `first5.txt` and `last5.txt` into `combined.txt`.
47. Inside `notes/`, create `day4.txt` with `Fourth day progress`.
48. Copy `day4.txt` into `projects/`.
49. Create a folder `archive/` inside `week1_assignment`.
50. Move `combined.txt` into `archive/`.

**Advanced Navigation**
51. Create a hidden folder `.hidden_data/` inside `week1_assignment`.
52. Inside `.hidden_data/`, create `secret.log` with `Top Secret`.
53. Inside `projects/`, create `plan.txt` with `future project`.
54. Append `more plans ahead` to `projects/plan.txt`.
55. Create a folder `trash/` inside `week1_assignment`.
56. Move `draft.txt` (from backup) into `trash/`.
57. Create a file `timestamp.txt` with the current date.
58. Inside `week1_assignment`, create `credits.txt` with `Developed by `.
59. Copy `credits.txt` into `projects/week1_project/`.
60. Compress `projects/` into `projects.tar.gz`.
</details>

<details>
<summary><b>Part 2: 0x00. Vim Requirements</b></summary>
<br>

**1. Basic Vim Setup**
* Create `vim_assignment` directory and manage `notes.txt` with specific text insertions, deletions, appending, and saving alternative versions (`notes_v1.txt`).

**2. Navigating & Editing**
* Create a `story.txt` file (5+ lines). 
* Perform line insertions, deletions, and specific string searches within the editor.

**3. Multiple Files & Buffers**
* Create and edit `file1.txt` and `file2.txt`.
* Manage multiple buffers using `:bn` (buffer next) and `:bp` (buffer previous).

**4. Windows & Tabs**
* Split the Vim workspace into multiple windows and tabs.
* Resize windows and seamlessly switch between open tabs.

**5. Macros & Registers**
* Create `numbers.txt` and utilize Vim macros to automate text manipulation (e.g., doubling values).
* Use yank (copy) and paste registers effectively to output `numbers_doubled.txt` and `numbers_final.txt`.

**6. Configuration & Advanced (`.vimrc`)**
* Create a custom `.vimrc` configuration file in the assignment root.
* Enable `syntax on`, `set number`, `set tabstop=4`, `set shiftwidth=4`, `set expandtab`, `set ignorecase`, and `set smartcase`.
* Map custom keys within the configuration.
* Package the final environment into `vim_assignment.zip`.
</details>

---

## 🚀 Execution
The assignments were verified using local automated bash grading scripts (`mark_shell_navigation.sh` and corresponding Vim grading scripts) which validate file existence, exact string matches, directory structures, and system configurations.
```
