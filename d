[33mcommit f3633802625111d57aa62ca4faf94ecffefa5619[m[33m ([m[1;36mHEAD -> [m[1;32mmaster[m[33m)[m
Author: 99narii <madnarii@gmail.com>
Date:   Tue May 16 11:51:29 2023 +0900

    Init project

[1mdiff --git a/f b/f[m
[1mnew file mode 100644[m
[1mindex 0000000..5972578[m
[1m--- /dev/null[m
[1m+++ b/f[m
[36m@@ -0,0 +1,270 @@[m
[32m+[m
[32m+[m[32m                   SSUUMMMMAARRYY OOFF LLEESSSS CCOOMMMMAANNDDSS[m
[32m+[m
[32m+[m[32m      Commands marked with * may be preceded by a number, _N.[m
[32m+[m[32m      Notes in parentheses indicate the behavior if _N is given.[m
[32m+[m[32m      A key preceded by a caret indicates the Ctrl key; thus ^K is ctrl-K.[m
[32m+[m
[32m+[m[32m  h  H                 Display this help.[m
[32m+[m[32m  q  :q  Q  :Q  ZZ     Exit.[m
[32m+[m[32m ---------------------------------------------------------------------------[m
[32m+[m
[32m+[m[32m                           MMOOVVIINNGG[m
[32m+[m
[32m+[m[32m  e  ^E  j  ^N  CR  *  Forward  one line   (or _N lines).[m
[32m+[m[32m  y  ^Y  k  ^K  ^P  *  Backward one line   (or _N lines).[m
[32m+[m[32m  f  ^F  ^V  SPACE  *  Forward  one window (or _N lines).[m
[32m+[m[32m  b  ^B  ESC-v      *  Backward one window (or _N lines).[m
[32m+[m[32m  z                 *  Forward  one window (and set window to _N).[m
[32m+[m[32m  w                 *  Backward one window (and set window to _N).[m
[32m+[m[32m  ESC-SPACE         *  Forward  one window, but don't stop at end-of-file.[m
[32m+[m[32m  d  ^D             *  Forward  one half-window (and set half-window to _N).[m
[32m+[m[32m  u  ^U             *  Backward one half-window (and set half-window to _N).[m
[32m+[m[32m  ESC-)  RightArrow *  Right one half screen width (or _N positions).[m
[32m+[m[32m  ESC-(  LeftArrow  *  Left  one half screen width (or _N positions).[m
[32m+[m[32m  ESC-}  ^RightArrow   Right to last column displayed.[m
[32m+[m[32m  ESC-{  ^LeftArrow    Left  to first column.[m
[32m+[m[32m  F                    Forward forever; like "tail -f".[m
[32m+[m[32m  ESC-F                Like F but stop when search pattern is found.[m
[32m+[m[32m  r  ^R  ^L            Repaint screen.[m
[32m+[m[32m  R                    Repaint screen, discarding buffered input.[m
[32m+[m[32m        ---------------------------------------------------[m
[32m+[m[32m        Default "window" is the screen height.[m
[32m+[m[32m        Default "half-window" is half of the screen height.[m
[32m+[m[32m ---------------------------------------------------------------------------[m
[32m+[m
[32m+[m[32m                          SSEEAARRCCHHIINNGG[m
[32m+[m
[32m+[m[32m  /_p_a_t_t_e_r_n          *  Search forward for (_N-th) matching line.[m
[32m+[m[32m  ?_p_a_t_t_e_r_n          *  Search backward for (_N-th) matching line.[m
[32m+[m[32m  n                 *  Repeat previous search (for _N-th occurrence).[m
[32m+[m[32m  N                 *  Repeat previous search in reverse direction.[m
[32m+[m[32m  ESC-n             *  Repeat previous search, spanning files.[m
[32m+[m[32m  ESC-N             *  Repeat previous search, reverse dir. & spanning files.[m
[32m+[m[32m  ESC-u                Undo (toggle) search highlighting.[m
[32m+[m[32m  ESC-U                Clear search highlighting.[m
[32m+[m[32m  &_p_a_t_t_e_r_n          *  Display only matching lines.[m
[32m+[m[32m        ---------------------------------------------------[m
[32m+[m[32m        A search pattern may begin with one or more of:[m
[32m+[m[32m        ^N or !  Search for NON-matching lines.[m
[32m+[m[32m        ^E or *  Search multiple files (pass thru END OF FILE).[m
[32m+[m[32m        ^F or @  Start search at FIRST file (for /) or last file (for ?).[m
[32m+[m[32m        ^K       Highlight matches, but don't move (KEEP position).[m
[32m+[m[32m        ^R       Don't use REGULAR EXPRESSIONS.[m
[32m+[m[32m        ^W       WRAP search if no match found.[m
[32m+[m[32m ---------------------------------------------------------------------------[m
[32m+[m
[32m+[m[32m                           JJUUMMPPIINNGG[m
[32m+[m
[32m+[m[32m  g  <  ESC-<       *  Go to first line in file (or line _N).[m
[32m+[m[32m  G  >  ESC->       *  Go to last line in file (or line _N).[m
[32m+[m[32m  p  %              *  Go to beginning of file (or _N percent into file).[m
[32m+[m[32m  t                 *  Go to the (_N-th) next tag.[m
[32m+[m[32m  T                 *  Go to the (_N-th) previous tag.[m
[32m+[m[32m  {  (  [           *  Find close bracket } ) ].[m
[32m+[m[32m  }  )  ]           *  Find open bracket { ( [.[m
[32m+[m[32m  ESC-^F _<_c_1_> _<_c_2_>  *  Find close bracket _<_c_2_>.[m
[32m+[m[32m  ESC-^B _<_c_1_> _<_c_2_>  *  Find open bracket _<_c_1_>.[m
[32m+[m[32m        ---------------------------------------------------[m
[32m+[m[32m        Each "find close bracket" command goes forward to the close bracket[m[41m [m
[32m+[m[32m          matching the (_N-th) open bracket in the top line.[m
[32m+[m[32m        Each "find open bracket" command goes backward to the open bracket[m[41m [m
[32m+[m[32m          matching the (_N-th) close bracket in the bottom line.[m
[32m+[m
[32m+[m[32m  m_<_l_e_t_t_e_r_>            Mark the current top line with <letter>.[m
[32m+[m[32m  M_<_l_e_t_t_e_r_>            Mark the current bottom line with <letter>.[m
[32m+[m[32m  '_<_l_e_t_t_e_r_>            Go to a previously marked position.[m
[32m+[m[32m  ''                   Go to the previous position.[m
[32m+[m[32m  ^X^X                 Same as '.[m
[32m+[m[32m  ESC-m_<_l_e_t_t_e_r_>        Clear a mark.[m
[32m+[m[32m        ---------------------------------------------------[m
[32m+[m[32m        A mark is any upper-case or lower-case letter.[m
[32m+[m[32m        Certain marks are predefined:[m
[32m+[m[32m             ^  means  beginning of the file[m
[32m+[m[32m             $  means  end of the file[m
[32m+[m[32m ---------------------------------------------------------------------------[m
[32m+[m
[32m+[m[32m                        CCHHAANNGGIINNGG FFIILLEESS[m
[32m+[m
[32m+[m[32m  :e [_f_i_l_e]            Examine a new file.[m
[32m+[m[32m  ^X^V                 Same as :e.[m
[32m+[m[32m  :n                *  Examine the (_N-th) next file from the command line.[m
[32m+[m[32m  :p                *  Examine the (_N-th) previous file from the command line.[m
[32m+[m[32m  :x                *  Examine the first (or _N-th) file from the command line.[m
[32m+[m[32m  :d                   Delete the current file from the command line list.[m
[32m+[m[32m  =  ^G  :f            Print current file name.[m
[32m+[m[32m ---------------------------------------------------------------------------[m
[32m+[m
[32m+[m[32m                    MMIISSCCEELLLLAANNEEOOUUSS CCOOMMMMAANNDDSS[m
[32m+[m
[32m+[m[32m  -_<_f_l_a_g_>              Toggle a command line option [see OPTIONS below].[m
[32m+[m[32m  --_<_n_a_m_e_>             Toggle a command line option, by name.[m
[32m+[m[32m  __<_f_l_a_g_>              Display the setting of a command line option.[m
[32m+[m[32m  ___<_n_a_m_e_>             Display the setting of an option, by name.[m
[32m+[m[32m  +_c_m_d                 Execute the less cmd each time a new file is examined.[m
[32m+[m
[32m+[m[32m  !_c_o_m_m_a_n_d             Execute the shell command with $SHELL.[m
[32m+[m[32m  |XX_c_o_m_m_a_n_d            Pipe file between current pos & mark XX to shell command.[m
[32m+[m[32m  s _f_i_l_e               Save input to a file.[m
[32m+[m[32m  v                    Edit the current file with $VISUAL or $EDITOR.[m
[32m+[m[32m  V                    Print version number of "less".[m
[32m+[m[32m ---------------------------------------------------------------------------[m
[32m+[m
[32m+[m[32m                           OOPPTTIIOONNSS[m
[32m+[m
[32m+[m[32m        Most options may be changed either on the command line,[m
[32m+[m[32m        or from within less by using the - or -- command.[m
[32m+[m[32m        Options may be given in one of two forms: either a single[m
[32m+[m[32m        character preceded by a -, or a name preceded by --.[m
[32m+[m
[32m+[m[32m  -?  ........  --help[m
[32m+[m[32m                  Display help (from command line).[m
[32m+[m[32m  -a  ........  --search-skip-screen[m
[32m+[m[32m                  Search skips current screen.[m
[32m+[m[32m  -A  ........  --SEARCH-SKIP-SCREEN[m
[32m+[m[32m                  Search starts just after target line.[m
[32m+[m[32m  -b [_N]  ....  --buffers=[_N][m
[32m+[m[32m                  Number of buffers.[m
[32m+[m[32m  -B  ........  --auto-buffers[m
[32m+[m[32m                  Don't automatically allocate buffers for pipes.[m
[32m+[m[32m  -c  ........  --clear-screen[m
[32m+[m[32m                  Repaint by clearing rather than scrolling.[m
[32m+[m[32m  -d  ........  --dumb[m
[32m+[m[32m                  Dumb terminal.[m
[32m+[m[32m  -D xx_c_o_l_o_r  .  --color=xx_c_o_l_o_r[m
[32m+[m[32m                  Set screen colors.[m
[32m+[m[32m  -e  -E  ....  --quit-at-eof  --QUIT-AT-EOF[m
[32m+[m[32m                  Quit at end of file.[m
[32m+[m[32m  -f  ........  --force[m
[32m+[m[32m                  Force open non-regular files.[m
[32m+[m[32m  -F  ........  --quit-if-one-screen[m
[32m+[m[32m                  Quit if entire file fits on first screen.[m
[32m+[m[32m  -g  ........  --hilite-search[m
[32m+[m[32m                  Highlight only last match for searches.[m
[32m+[m[32m  -G  ........  --HILITE-SEARCH[m
[32m+[m[32m                  Don't highlight any matches for searches.[m
[32m+[m[32m  -h [_N]  ....  --max-back-scroll=[_N][m
[32m+[m[32m                  Backward scroll limit.[m
[32m+[m[32m  -i  ........  --ignore-case[m
[32m+[m[32m                  Ignore case in searches that do not contain uppercase.[m
[32m+[m[32m  -I  ........  --IGNORE-CASE[m
[32m+[m[32m                  Ignore case in all searches.[m
[32m+[m[32m  -j [_N]  ....  --jump-target=[_N][m
[32m+[m[32m                  Screen position of target lines.[m
[32m+[m[32m  -J  ........  --status-column[m
[32m+[m[32m                  Display a status column at left edge of screen.[m
[32m+[m[32m  -k [_f_i_l_e]  .  --lesskey-file=[_f_i_l_e][m
[32m+[m[32m                  Use a lesskey file.[m
[32m+[m[32m  -K  ........  --quit-on-intr[m
[32m+[m[32m                  Exit less in response to ctrl-C.[m
[32m+[m[32m  -L  ........  --no-lessopen[m
[32m+[m[32m                  Ignore the LESSOPEN environment variable.[m
[32m+[m[32m  -m  -M  ....  --long-prompt  --LONG-PROMPT[m
[32m+[m[32m                  Set prompt style.[m
[32m+[m[32m  -n .........  --line-numbers[m
[32m+[m[32m                  Suppress line numbers in prompts and messages.[m
[32m+[m[32m  -N .........  --LINE-NUMBERS[m
[32m+[m[32m                  Display line number at start of each line.[m
[32m+[m[32m  -o [_f_i_l_e]  .  --log-file=[_f_i_l_e][m
[32m+[m[32m                  Copy to log file (standard input only).[m
[32m+[m[32m  -O [_f_i_l_e]  .  --LOG-FILE=[_f_i_l_e][m
[32m+[m[32m                  Copy to log file (unconditionally overwrite).[m
[32m+[m[32m  -p [_p_a_t_t_e_r_n]  --pattern=[_p_a_t_t_e_r_n][m
[32m+[m[32m                  Start at pattern (from command line).[m
[32m+[m[32m  -P [_p_r_o_m_p_t]   --prompt=[_p_r_o_m_p_t][m
[32m+[m[32m                  Define new prompt.[m
[32m+[m[32m  -q  -Q  ....  --quiet  --QUIET  --silent --SILENT[m
[32m+[m[32m                  Quiet the terminal bell.[m
[32m+[m[32m  -r  -R  ....  --raw-control-chars  --RAW-CONTROL-CHARS[m
[32m+[m[32m                  Output "raw" control characters.[m
[32m+[m[32m  -s  ........  --squeeze-blank-lines[m
[32m+[m[32m                  Squeeze multiple blank lines.[m
[32m+[m[32m  -S  ........  --chop-long-lines[m
[32m+[m[32m                  Chop (truncate) long lines rather than wrapping.[m
[32m+[m[32m  -t [_t_a_g]  ..  --tag=[_t_a_g][m
[32m+[m[32m                  Find a tag.[m
[32m+[m[32m  -T [_t_a_g_s_f_i_l_e] --tag-file=[_t_a_g_s_f_i_l_e][m
[32m+[m[32m                  Use an alternate tags file.[m
[32m+[m[32m  -u  -U  ....  --underline-special  --UNDERLINE-SPECIAL[m
[32m+[m[32m                  Change handling of backspaces.[m
[32m+[m[32m  -V  ........  --version[m
[32m+[m[32m                  Display the version number of "less".[m
[32m+[m[32m  -w  ........  --hilite-unread[m
[32m+[m[32m                  Highlight first new line after forward-screen.[m
[32m+[m[32m  -W  ........  --HILITE-UNREAD[m
[32m+[m[32m                  Highlight first new line after any forward movement.[m
[32m+[m[32m  -x [_N[,...]]  --tabs=[_N[,...]][m
[32m+[m[32m                  Set tab stops.[m
[32m+[m[32m  -X  ........  --no-init[m
[32m+[m[32m                  Don't use termcap init/deinit strings.[m
[32m+[m[32m  -y [_N]  ....  --max-forw-scroll=[_N][m
[32m+[m[32m                  Forward scroll limit.[m
[32m+[m[32m  -z [_N]  ....  --window=[_N][m
[32m+[m[32m                  Set size of window.[m
[32m+[m[32m  -" [_c[_c]]  .  --quotes=[_c[_c]][m
[32m+[m[32m                  Set shell quote characters.[m
[32m+[m[32m  -~  ........  --tilde[m
[32m+[m[32m                  Don't display tildes after end of file.[m
[32m+[m[32m  -# [_N]  ....  --shift=[_N][m
[32m+[m[32m                  Set horizontal scroll amount (0 = one half screen width).[m
[32m+[m[32m                --file-size[m
[32m+[m[32m                  Automatically determine the size of the input file.[m
[32m+[m[32m                --follow-name[m
[32m+[m[32m                  The F command changes files if the input file is renamed.[m
[32m+[m[32m                --header=[_N[,_M]][m
[32m+[m[32m                  Use N lines and M columns to display file headers.[m
[32m+[m[32m                --incsearch[m
[32m+[m[32m                  Search file as each pattern character is typed in.[m
[32m+[m[32m                --line-num-width=N[m
[32m+[m[32m                  Set the width of the -N line number field to N characters.[m
[32m+[m[32m                --mouse[m
[32m+[m[32m                  Enable mouse input.[m
[32m+[m[32m                --no-keypad[m
[32m+[m[32m                  Don't send termcap keypad init/deinit strings.[m
[32m+[m[32m                --no-histdups[m
[32m+[m[32m                  Remove duplicates from command history.[m
[32m+[m[32m                --no-number-headers[m
[32m+[m[32m                  Don't give line numbers to header lines.[m
[32m+[m[32m                --redraw-on-quit[m
[32m+[m[32m                  Redraw final screen when quitting.[m
[32m+[m[32m                --rscroll=C[m
[32m+[m[32m                  Set the character used to mark truncated lines.[m
[32m+[m[32m                --save-marks[m
[32m+[m[32m                  Retain marks across invocations of less.[m
[32m+[m[32m                --search-options=[EFKNRW-][m
[32m+[m[32m                  Set default options for every search.[m
[32m+[m[32m                --status-col-width=N[m
[32m+[m[32m                  Set the width of the -J status column to N characters.[m
[32m+[m[32m                --status-line[m
[32m+[m[32m                  Highlight or color the entire line containing a mark.[m
[32m+[m[32m                --use-backslash[m
[32m+[m[32m                  Subsequent options use backslash as escape char.[m
[32m+[m[32m                --use-color[m
[32m+[m[32m                  Enables colored text.[m
[32m+[m[32m                --wheel-lines=N[m
[32m+[m[32m                  Each click of the mouse wheel moves N lines.[m
[32m+[m
[32m+[m
[32m+[m[32m ---------------------------------------------------------------------------[m
[32m+[m
[32m+[m[32m                          LLIINNEE EEDDIITTIINNGG[m
[32m+[m
[32m+[m[32m        These keys can be used to edit text being entered[m[41m [m
[32m+[m[32m        on the "command line" at the bottom of the screen.[m
[32m+[m
[32m+[m[32m RightArrow ..................... ESC-l ... Move cursor right one character.[m
[32m+[m[32m LeftArrow ...................... ESC-h ... Move cursor left one character.[m
[32m+[m[32m ctrl-RightArrow  ESC-RightArrow  ESC-w ... Move cursor right one word.[m
[32m+[m[32m ctrl-LeftArrow   ESC-LeftArrow   ESC-b ... Move cursor left one word.[m
[32m+[m[32m HOME ........................... ESC-0 ... Move cursor to start of line.[m
[32m+[m[32m END ............................ ESC-$ ... Move cursor to end of line.[m
[32m+[m[32m BACKSPACE ................................ Delete char to left of cursor.[m
[32m+[m[32m DELETE ......................... ESC-x ... Delete char under cursor.[m
[32m+[m[32m ctrl-BACKSPACE   ESC-BACKSPACE ........... Delete word to left of cursor.[m
[32m+[m[32m ctrl-DELETE .... ESC-DELETE .... ESC-X ... Delete word under cursor.[m
[32m+[m[32m ctrl-U ......... ESC (MS-DOS only) ....... Delete entire line.[m
[32m+[m[32m UpArrow ........................ ESC-k ... Retrieve previous command line.[m
[32m+[m[32m DownArrow ...................... ESC-j ... Retrieve next command line.[m
[32m+[m[32m TAB ...................................... Complete filename & cycle.[m
[32m+[m[32m SHIFT-TAB ...................... ESC-TAB   Complete filename & reverse cycle.[m
[32m+[m[32m ctrl-L ................................... Complete filename, list all.[m
[1mdiff --git a/rasdras b/rasdras[m
[1mnew file mode 100644[m
[1mindex 0000000..fade6ea[m
[1m--- /dev/null[m
[1m+++ b/rasdras[m
[36m@@ -0,0 +1,33 @@[m
[32m+[m[32mdiff.astextplain.textconv=astextplain[m
[32m+[m[32mfilter.lfs.clean=git-lfs clean -- %f[m
[32m+[m[32mfilter.lfs.smudge=git-lfs smudge -- %f[m
[32m+[m[32mfilter.lfs.process=git-lfs filter-process[m
[32m+[m[32mfilter.lfs.required=true[m
[32m+[m[32mhttp.sslbackend=openssl[m
[32m+[m[32mhttp.sslcainfo=C:/Program Files/Git/mingw64/ssl/certs/ca-bundle.crt[m
[32m+[m[32mcore.autocrlf=true[m
[32m+[m[32mcore.fscache=true[m
[32m+[m[32mcore.symlinks=false[m
[32m+[m[32mpull.rebase=false[m
[32m+[m[32mcredential.helper=manager[m
[32m+[m[32mcredential.https://dev.azure.com.usehttppath=true[m
[32m+[m[32minit.defaultbranch=master[m
[32m+[m[32muser.email=madnarii@gmail.com[m
[32m+[m[32muser.name=99narii[m
[32m+[m[32muse.name=Narii[m
[32m+[m[32mdifftool.sourcetree.cmd=''[m[41m [m
[32m+[m[32mmergetool.sourcetree.cmd=''[m[41m [m
[32m+[m[32mmergetool.sourcetree.trustexitcode=true[m
[32m+[m[32mfilter.lfs.clean=git-lfs clean -- %f[m
[32m+[m[32mfilter.lfs.smudge=git-lfs smudge -- %f[m
[32m+[m[32mfilter.lfs.process=git-lfs filter-process[m
[32m+[m[32mfilter.lfs.required=true[m
[32m+[m[32mcore.editor="C:\Users\ezen\AppData\Local\Programs\Microsoft VS Code\bin\code" --wait[m
[32m+[m[32msafe.directory=//wsl$/Ubuntu-..[m
[32m+[m[32msafe.directory=C:/Users/ezen/Desktop/Notes/Notes/JavaNotes[m
[32m+[m[32mcore.repositoryformatversion=0[m
[32m+[m[32mcore.filemode=false[m
[32m+[m[32mcore.bare=false[m
[32m+[m[32mcore.logallrefupdates=true[m
[32m+[m[32mcore.symlinks=false[m
[32m+[m[32mcore.ignorecase=true[m
