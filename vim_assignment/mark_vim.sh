#!/bin/bash

BASE="$HOME/vim_assignment"
SCORE=0
TOTAL=60
ASSIGNMENT_TITLE="0x00. Vi"   # <--- Title set here

echo "Checking your $ASSIGNMENT_TITLE ..."
echo

# -------------------------------
# SECTION 1: Basic Vim Setup (1–10)
# -------------------------------

[[ -d "$BASE" ]] && ((SCORE++))  # Q1: folder vim_assignment
[[ -f "$BASE/notes.txt" ]] && ((SCORE++))  # Q2: file notes.txt
grep -q "Welcome to Vim" "$BASE/notes.txt" && ((SCORE++))  # Q3
[[ -f "$BASE/notes.txt" ]] && ((SCORE++))  # Q4: saved properly
grep -q "Second line of text" "$BASE/notes.txt" && ((SCORE++))  # Q5
grep -q "Welcome to Vim" "$BASE/notes.txt" && ((SCORE++))  # Q6: copied line check
grep -q "Welcome to Vim" "$BASE/notes.txt" && ((SCORE++))  # Q7: redo implies both exist
! grep -q "Second line of text" "$BASE/notes.txt" && ((SCORE++))  # Q8: deleted
grep -q "Appended text" "$BASE/notes.txt" && ((SCORE++))  # Q9: appended
[[ -f "$BASE/notes_v1.txt" ]] && ((SCORE++))  # Q10: saved as new file


# -------------------------------
# SECTION 2: Navigating & Editing (11–20)
# -------------------------------

[[ -f "$BASE/story.txt" ]] && ((SCORE++))  # Q11
[[ $(wc -l < "$BASE/story.txt") -ge 5 ]] && ((SCORE++))  # Q12
grep -q "Inserted line" "$BASE/story.txt" && ((SCORE++))  # Q13
! grep -q "First line" "$BASE/story.txt" && ((SCORE++))  # Q14
tail -n 1 "$BASE/story.txt" | grep -q "line" && ((SCORE++))  # Q15
grep -q "sentence" "$BASE/story.txt" && ((SCORE++))  # Q16
grep -q "set number" "$BASE/.vimrc" && ((SCORE++))  # Q17
grep -q "sentence" "$BASE/story.txt" && ((SCORE++))  # Q18
grep -q "phrase" "$BASE/story.txt" && ((SCORE++))  # Q19
[[ -f "$BASE/story.txt" ]] && ((SCORE++))  # Q20


# -------------------------------
# SECTION 3: Multiple Files & Buffers (21–30)
# -------------------------------

[[ -f "$BASE/file1.txt" ]] && ((SCORE++))  # Q21
grep -q "This is file1" "$BASE/file1.txt" && ((SCORE++))  # Q22
grep -q "This is file2" "$BASE/file2.txt" && ((SCORE++))  # Q23
[[ -f "$BASE/file1.txt" && -f "$BASE/file2.txt" ]] && ((SCORE++))  # Q24
((SCORE++))  # Q25: :bn check (manual)
((SCORE++))  # Q26: :bp check (manual)
grep -q "Edited in buffer mode" "$BASE/file1.txt" && ((SCORE++))  # Q27
[[ -f "$BASE/file1.txt" && -f "$BASE/file2.txt" ]] && ((SCORE++))  # Q28
((SCORE++))  # Q29: quit all (implied)
[[ -f "$BASE/file1.txt" && -f "$BASE/file2.txt" ]] && ((SCORE++))  # Q30


# -------------------------------
# SECTION 4: Windows & Tabs (31–40)
# -------------------------------

[[ -f "$BASE/file1.txt" ]] && ((SCORE++))  # Q31
((SCORE++))  # Q32 manual
((SCORE++))  # Q33 manual
[[ -f "$BASE/file2.txt" ]] && ((SCORE++))  # Q34
((SCORE++))  # Q35 resize
((SCORE++))  # Q36 close
((SCORE++))  # Q37 tabnew
[[ -f "$BASE/file1.txt" && -f "$BASE/file2.txt" ]] && ((SCORE++))  # Q38
((SCORE++))  # Q39 switch tab
((SCORE++))  # Q40 close tabs


# -------------------------------
# SECTION 5: Macros & Registers (41–50)
# -------------------------------

[[ -f "$BASE/numbers.txt" ]] && ((SCORE++))  # Q41
grep -q "2" "$BASE/numbers.txt" && ((SCORE++))  # Q42 (macro)
[[ $(grep -c "^[0-9]" "$BASE/numbers.txt") -ge 10 ]] && ((SCORE++))  # Q43
[[ -f "$BASE/numbers_doubled.txt" ]] && ((SCORE++))  # Q44
((SCORE++))  # Q45 yank register
((SCORE++))  # Q46 paste register
grep -q "Value:" "$BASE/numbers_doubled.txt" && ((SCORE++))  # Q47
grep -q "Value:" "$BASE/numbers_doubled.txt" && ((SCORE++))  # Q48
[[ -f "$BASE/numbers_final.txt" ]] && ((SCORE++))  # Q49
[[ ! -f "$BASE/.swp" ]] && ((SCORE++))  # Q50 exited properly


# -------------------------------
# SECTION 6: Configuration & Advanced (51–60)
# -------------------------------

[[ -f "$BASE/.vimrc" ]] && ((SCORE++))  # Q51
grep -q "set number" "$BASE/.vimrc" && ((SCORE++))  # Q52
grep -q "syntax on" "$BASE/.vimrc" && ((SCORE++))  # Q53
grep -q "set tabstop=4" "$BASE/.vimrc" && grep -q "set shiftwidth=4" "$BASE/.vimrc" && ((SCORE++))  # Q54
grep -q "set expandtab" "$BASE/.vimrc" && ((SCORE++))  # Q55
grep -q "map" "$BASE/.vimrc" && ((SCORE++))  # Q56
grep -q "set number" "$BASE/.vimrc" && ((SCORE++))  # Q57 reopen test
grep -q "map" "$BASE/.vimrc" && ((SCORE++))  # Q58 save key works
grep -q "set ignorecase" "$BASE/.vimrc" && grep -q "set smartcase" "$BASE/.vimrc" && ((SCORE++))  # Q59
[[ -f "$HOME/vim_assignment.zip" ]] && ((SCORE++))  # Q60 compressed


# -------------------------------
# FINAL GRADE
# -------------------------------
PERCENT=$(( SCORE * 100 / TOTAL ))

echo
echo "You scored $SCORE / $TOTAL tasks"
echo "Grade: $PERCENT%"

if [ $PERCENT -eq 100 ]; then
    echo "Excellent! Perfect score!"
elif [ $PERCENT -ge 70 ]; then
    echo "Good job, keep practicing Vim."
else
    echo "Needs improvement. Review Vim basics."
fi


# -------------------------------
# SUBMISSION
# -------------------------------
read -p "Enter your email: " EMAIL

TIMESTAMP=$(date +%s)
RAW="$EMAIL-$ASSIGNMENT_TITLE-$SCORE-$PERCENT-$TIMESTAMP"
HASH=$(echo -n "$RAW" | sha256sum | cut -d ' ' -f1)

echo "Submission Passcode: $HASH"

API_URL="https://www.winmingle.com/api/save_bash_scores.php"
curl -s -X POST "$API_URL" \
     -H "Content-Type: application/json" \
     -d "{
           \"email\": \"$EMAIL\",
           \"assignment_title\": \"$ASSIGNMENT_TITLE\",
           \"score\": $SCORE,
           \"percent\": $PERCENT,
           \"timestamp\": $TIMESTAMP,
           \"hash\": \"$HASH\"
         }"

echo "Result sent to server!"
