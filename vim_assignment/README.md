# 0x00. Vim 📝

This repository contains the completed tasks for the System Engineering Vim assignment. The project focuses on mastering the Vim text editor, moving from basic text insertion to advanced features like macros, buffer management, window splitting, and custom environment configuration.

**Author:** Adeleke

---

## 🛠️ Technologies & Tools
* **OS:** Ubuntu / Linux environment
* **Editor:** Vim
* **Version Control:** Git

---

## 📂 Project Structure
* `notes.txt` / `notes_v1.txt`: Basic text editing, copying, pasting, and appending.
* `story.txt`: Line navigation, word replacement, yanking, and deleting.
* `file1.txt` / `file2.txt`: Multiple file management using buffers, vertical/horizontal splits, and tabs.
* `numbers.txt` / `numbers_doubled.txt` / `numbers_final.txt`: Recording and executing Vim macros and using registers.
* `.vimrc`: Custom Vim configuration file enabling syntax highlighting, line numbers, and custom key mappings.

---

## 📝 Assignment Tasks

<details>
<summary><b>Section 1: Basic Vim Setup (1–10)</b></summary>
<br>

1. Create a folder `vim_assignment`.
2. Inside, create a file `notes.txt` using Vim.
3. Write `Welcome to Vim` in the first line of `notes.txt`.
4. Save and exit Vim.
5. Open `notes.txt` again and add the line `Second line of text`.
6. Use Vim to copy the first line and paste it below the second line.
7. Undo the last paste, then redo it.
8. Delete the second line using Vim.
9. Open `notes.txt`, go to the end of the file and insert `Appended text`.
10. Save `notes.txt` as `notes_v1.txt`.
</details>

<details>
<summary><b>Section 2: Navigating & Editing (11–20)</b></summary>
<br>

11. Create a file `story.txt` in Vim.
12. Add at least 5 lines of text.
13. Move the cursor to the third line using line numbers and insert `Inserted line`.
14. Use `dd` to delete the first line.
15. Yank (copy) line 2 and paste it at the bottom.
16. Replace the word `line` with `sentence` in the file.
17. Use `:set number` to show line numbers while editing.
18. Search for the word `sentence` inside `story.txt`.
19. Replace all occurrences of `sentence` with `phrase`.
20. Save and quit Vim.
</details>

<details>
<summary><b>Section 3: Multiple Files & Buffers (21–30)</b></summary>
<br>

21. Create two files with Vim: `file1.txt` and `file2.txt`.
22. In `file1.txt`, write `This is file1`.
23. In `file2.txt`, write `This is file2`.
24. Open both files in the same Vim session.
25. Switch from `file1.txt` to `file2.txt` using `:bn`.
26. Switch back to `file1.txt` using `:bp`.
27. Add a new line to `file1.txt`: `Edited in buffer mode`.
28. Save all open files at once using `:wa`.
29. Quit all open files with one command.
30. Verify that both files saved properly.
</details>

<details>
<summary><b>Section 4: Windows & Tabs (31–40)</b></summary>
<br>

31. Open `file1.txt` and split the window horizontally.
32. Move between windows using window commands.
33. Split the window vertically.
34. In one window, open `file2.txt`.
35. Resize the vertical split (make left side smaller).
36. Close the current window.
37. Open a new tab in Vim.
38. Edit `file1.txt` in tab 1, `file2.txt` in tab 2.
39. Switch between tabs using `:tabn`.
40. Close all tabs and quit Vim.
</details>

<details>
<summary><b>Section 5: Macros & Registers (41–50)</b></summary>
<br>

41. Create a file `numbers.txt` with numbers 1–10 (one per line).
42. Record a macro that doubles each number.
43. Apply the macro to all 10 lines.
44. Save the updated file as `numbers_doubled.txt`.
45. Yank line 5 into register `a`.
46. Paste the contents of register `a` into the bottom of the file.
47. Record a macro that inserts `Value:` before each number.
48. Apply the macro to all lines.
49. Save file as `numbers_final.txt`.
50. Exit Vim.
</details>

<details>
<summary><b>Section 6: Configuration & Advanced Features (51–60)</b></summary>
<br>

51. Inside `vim_assignment`, create a `.vimrc` file.
52. Add `set number` to always show line numbers.
53. Add `syntax on` for syntax highlighting.
54. Add `set tabstop=4` and `set shiftwidth=4`.
55. Add `set expandtab` to convert tabs to spaces.
56. Add a custom mapping: map `<F2>` to save file.
57. Reopen Vim and check if line numbers show by default.
58. Open any file and press `<F2>` to test if it saves.
59. Add `set ignorecase` and `set smartcase` in `.vimrc`.
60. Compress the entire `vim_assignment/` into `vim_assignment.zip`.
</details>

---
*Verified using automated bash grading script.*
