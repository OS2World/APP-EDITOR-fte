.*! html2ipf 0.4

:userdoc.
:title.FTE Manual
 
:h1 id=0.About FTE
:lm margin=1.:i1.About FTE
:p.:lines align=center. fte
.br
Version :hp2.0.46:ehp2.
.br
(c) Copyright 1995-1998 Marko Macek
.br
:elines.
:p.The latest version can be always downloaded from&colon.
.br
:hp2.http&colon.//ixtas.fri.uni-lj.si/~markom/fte:ehp2. 
:p.Please send comments/suggestions/bug reports to&colon.
.br
:hp2.Marko.Macek@snet.fri.uni-lj.si:ehp2. or :hp2.mark@hermes.si:ehp2. 
:p.See file README for last minute notes. 
:p.See file HISTORY for recent changes. 
:p.See file TODO for possible future additions. 
:p.See file BUGS for outstanding problems. 
:h1 id=1.Installation
:lm margin=1.:i1.Installation
:p.This section covers installation and configuration of editor. 
:h2 id=2.OS/2
:lm margin=1.:i1.OS/2
:p.
:h3 id=3.Files
:lm margin=1.:i1.Files
:p.
:p.The following files are included in the archive&colon. :dl compact tsize=10 break=all. 
:dt.:hp2.README:ehp2. 
:dd.Release notes, read first! 
:dt.:hp2.fte.exe:ehp2. 
:dd.Text-mode executable 
:dt.:hp2.ftepm.exe:ehp2. 
:dd.Presentation Manager executable 
:dt.:hp2.fte-def.cnf:ehp2. 
:dd.Default compiled configuration file. 
:dt.:hp2.fte.inf:ehp2., :hp2.fte.ipf:ehp2., :hp2.fte.html:ehp2., :hp2.fte.txt:ehp2. 
:dd.This file, in various formats. 
:dt.:hp2.config\*.fte:ehp2. 
:dd.Configuration files in source form. 
:dt.:hp2.clipserv.exe:ehp2. 
:dd.Clipboard server (required for PM clipboard support in text-mode
version). 
:dt.:hp2.cliputil.exe:ehp2. 
:dd.Utility to copy/paste to/from clipboard from command line. 
:dt.:hp2.HISTORY:ehp2. 
:dd.Revision history. 
:dt.:hp2.TODO:ehp2. 
:dd.Todo list. 
:dt.:hp2.file_id.diz:ehp2. 
:dd.Program description for BBS upload. :edl.
:h3 id=4.Required files
:lm margin=1.:i1.Required files
:p.
:p.The default configuration files are precompiled into :hp2.fte-def.cnf:ehp2.. This file should be copied to :hp2.fte.cnf:ehp2. for text-mode version, and to :hp2.ftepm.cnf:ehp2. for PM version. Or, you may want to compile your own configuration
from source using :hp1.cfte:ehp1. configuration file compiler. 
:p.For minimal installation of the text mode version, only :hp2.fte.exe:ehp2. and :hp2.fte.cnf:ehp2. are required. For PM clipboard support :hp2.clipserv.EXE:ehp2. is needed and must be running whenever you wish to use PM clipboard
from FTE. 
:p.To install PM version, :hp2.ftepm.exe:ehp2. and :hp2.ftepm.cnf:ehp2. are needed. 
:p.To recompile source files, :hp2.cfte.exe:ehp2. and :hp2.config\*.fte:ehp2. files are needed. 
:p.
:p.Place executable files somewhere on your :hp2.PATH:ehp2.. Compiled configuration files should be located in the same directory
as executable and have the same basename with extension :hp2..CNF:ehp2.. 
.br

:h2 id=5.Unix
:lm margin=1.:i1.Unix
:p.The following files are included in the archive&colon. :dl compact tsize=10 break=all. 
:dt.:hp2.README:ehp2. 
:dd.Readme file. 
:dt.:hp2.fte:ehp2. 
:dd.Linux console-only executable 
:dt.:hp2.Xfte:ehp2. 
:dd.X11 Xlib executable. 
:dt.:hp2.fte-def.cnf:ehp2. 
:dd.Default compiled configuration file 
:dt.:hp2.fte.html:ehp2. 
:dd.Reference manual 
:dt.:hp2.config\*.fte:ehp2. 
:dd.Configuration files in source form. 
:dt.:hp2.HISTORY:ehp2. 
:dd.History of changes. 
:dt.:hp2.TODO:ehp2. 
:dd.Todo list. 
:dt.:hp2.file_id.diz:ehp2. 
:dd.Program description for BBS upload. 
:dt.:hp2.fte-0.38.lsm:ehp2. 
:dd.LSM entry for FTE. :edl.
:p.The default configuration files are precompiled into :hp2.fte-def.cnf:ehp2.. This file should be copied to :hp2.~/.fterc:ehp2. to be automatically loaded by FTE. You may want to compile your own
configuration from source using :hp1.cfte:ehp1. configuration file compiler. 
:p.Suggested installation directories&colon. :xmp.
    /usr/local/bin/fte
    /usr/local/bin/Xfte
    /usr/local/bin/cfte
    /usr/local/etc/fte/system.fterc
    /usr/local/lib/fte/etc/*.fte
    /usr/local/lib/fte/lib/fte.html
    /usr/local/lib/fte/lib/TODO
    /usr/local/lib/fte/lib/HISTORY
    /usr/local/lib/fte/lib/README
:exmp.
:h1 id=6.Configuration Files
:lm margin=1.:i1.Configuration Files
:p.FTE configuration files are version specific, and must be recompiled
with each new version of the editor. 
:p.On startup, editor will attempt to load a configuration file with the
basename as the executable and extension :hp2..CNF:ehp2.. The configuration file is produced by compiling source files with :hp1.CFTE:ehp1.. 
:p.If the command line option :hp2.-!:ehp2. is used, editor will not attempt to load a configuration file and
will use default built-in settings. 
:h2 id=7.Compiling configuration
:lm margin=1.:i1.Compiling configuration
:p.
:p.Configuration files are compiled using :hp1.CFTE:ehp1. program. 
:p.:hp1.cfte:ehp1. should be invoked on :hp2.main.fte:ehp2., for example&colon. :xmp.
[C&colon.\FTE] cfte config\main.fte
$ cfte config/main.fte
:exmp.
:p.This will automatically compile all :hp2.*.fte:ehp2. files included from :hp2.main.fte:ehp2. and produce :hp2.fte-new.cnf:ehp2. if there are no errors in source files. 
:p.When configuration source files are sucessfully compiled, the
resulting file :hp2.fte-new.cnf:ehp2. should be copied to :hp2.fte.cnf:ehp2. and :hp2.ftepm.cnf:ehp2., or under Unix to :hp2.~/.fterc:ehp2. 
:p.After FTE is properly configured with the above procedure, you can
select Options/Recompile Configuration from FTE menu bar, and FTE will
invoke :hp1.CFTE:ehp1. to recompile the configuration. 
:h2 id=8.Configuration file syntax
:lm margin=1.:i1.Configuration file syntax
:p.
:p.Comments start with character :hp2.#:ehp2. and last until the end of line. 
:p.Strings can be specified using any of :hp2.' " /:ehp2. characters. 
:p.Single quoted strings perform no substitution. To enter :hp2.':ehp2. or :hp2.\:ehp2. into a string precede it with a backslash. 
:p.Double quoted strings perform the following substitutions&colon. :xmp.
    \t  ->  ^I, tab character
    \r  ->  ^M, CR 
    \n  ->  ^J, LF
    \e  ->  ^[, escape character
    \v  ->  ^L, vertical tab
    \b  ->  ^H, backspace
    \a  ->  ^G, bell
:exmp.
:p.Strings started by :hp2./:ehp2. character require no escaping (except for '/'). Mostly useful for
specifying :link reftype=hd refid=423.regular expressions:elink. without double backslashes that are necessary in single and double
quoted strings. 
:h1 id=9.Command Line Options
:lm margin=1.:i1.Command Line Options
:p.The FTE command line syntax is&colon. 
:p.:hp2.fte [[options] [files] ...]:ehp2. 
:h2 id=10.Options
:lm margin=1.:i1.Options
:p.:dl compact tsize=10 break=all. 
:dt.:hp2.:hp2.-l:ehp2.line[,column]:ehp2. 
:dd.Go to line (and column) in next file specified on command line 
:dt.:hp2.:hp2.-m:ehp2.[MOD]E:ehp2. 
:dd.Use mode :hp2.MODE:ehp2. for remaining files. If no argument is specified, mode override is
cancelled. 
:dt.:hp2.:hp2.-C:ehp2.[file]:ehp2. 
:dd.Use specified configuration file (compiled). If no argument is
specified, the default builtin configuration is used. 
:dt.:hp2.:hp2.-D:ehp2.[file.dsk]:ehp2. 
:dd.Load/save desktop from file :hp2.file.dsk:ehp2.. If no argument is specified, desktop loading/saving is disabled. 
:dt.:hp2.:hp2.-H:ehp2.[file.his]:ehp2. 
:dd.Load/save history from file <.his>. If no argument, disable history
load/save. 
:dt.:hp2.:hp2.-T:ehp2.tags:ehp2. 
:dd.Load tags file :hp2.tags:ehp2.. The file must be in the format generated by the :hp2.ctags:ehp2. program. 
:dt.:hp2.:hp2.-t:ehp2.tag:ehp2. 
:dd.Lookup tag :hp2.tag:ehp2. and display file containing it. 
:dt.:hp2.:hp2.--:ehp2.:ehp2. 
:dd.The rest of the arguments are not options, but filenames. 
:dt.:hp2.:hp2.-+:ehp2.:ehp2. 
:dd.The next argument is not an option even if starting with a '-'. :edl.
:p.Optional arguments are marked by [ and ] brackets. 
:p.There should not be any delimiter between option and it's arguments. 
:p.
:h2 id=11.Examples
:lm margin=1.:i1.Examples
:p.:dl compact tsize=10 break=all. 
:dt.:hp2.fte -mBIN fte.exe:ehp2. 
:dd.load fte.exe in BIN mode 
:dt.:hp2.fte -l100,30 win.c:ehp2. 
:dd.go to (100,30) in win.c 
:dt.:hp2.fte window.cpp:ehp2. 
:dd.load file window.cpp 
:dt.:hp2.fte -mBIN fte.exe -m fte.cpp:ehp2. 
:dd.load fte.exe in binary mode, window.cpp in default mode (C/C++) 
:dt.:hp2.fte -mBIN -+ -bla-:ehp2. 
:dd.load file -bla- in BIN mode 
:dt.:hp2.fte -- -1 -2 -3 -4 -5 -6:ehp2. 
:dd.load files -1, -2, -3, -4, -5, -6 
:dt.:hp2.fte -D -H fte.dsk fte.his:ehp2. 
:dd.Disable desktop and history loading and saving and load files :hp2.fte.dsk:ehp2. and :hp2.fte.his:ehp2.. :edl.
:p.Under OS/2,NT and DOS default history and desktop files are named :hp2.FTE.DSK:ehp2. and :hp2.FTE.HIS:ehp2. respectively. Under Unix they are named :hp2..fte-desktop:ehp2. and :hp2..fte-history:ehp2.. The global desktop and history files will be searched in program
directory under OS/2 and in user home directory under Unix. 
:h1 id=12.Global Configuration
:lm margin=1.:i1.Global Configuration
:p.
:h2 id=13.Global Settings
:lm margin=1.:i1.Global Settings
:p.The following settings can be used in the :hp2.GLOBAL:ehp2. section of the configuration file. Some of the options are platform
specific (to be fixed). 
:h3 id=14.DefaultModeName
:lm margin=1.:i1.DefaultModeName
:p.Default mode name for loading/editing files. If not set or invalid,
first mode in the configuration file will be used instead. By default
set to 'PLAIN'. 
:h3 id=15.CompletionFilter
:lm margin=1.:i1.CompletionFilter
:p.Files matching this regexp are ignored when doing filename completion.
:h3 id=16.CompileRx
:lm margin=1.:i1.CompileRx
:p.Defines :link reftype=hd refid=423.regular expressions:elink. and thers subpattern indices to match when searching for errors and
warnings in compilation output. First number is an index of the
subpattern that matches filename. The second must match the line
number, the third parameter is the regular expression to match to each
line of the compiler output. 
:h3 id=17.OpenAfterClose
:lm margin=1.:i1.OpenAfterClose
:p.If set to 1, editor will prompt for another file when all files are
closed. 
:h3 id=18.SysClipboard
:lm margin=1.:i1.SysClipboard
:p.When set to 1, editor will use external (PM, X11) clipboard instead of
internal one. 
:h3 id=19.ScreenSizeX
:lm margin=1.:i1.ScreenSizeX
:p.Number of columns visible on screen or window 
:h3 id=20.ScreenSizeY
:lm margin=1.:i1.ScreenSizeY
:p.Number of lines visible on screen or window 
:h3 id=21.CursorInsertStart
:lm margin=1.:i1.CursorInsertStart
:p.Starting percentage of cursor size (from top) when in insert mode. 
:h3 id=22.CursorInsertEnd
:lm margin=1.:i1.CursorInsertEnd
:p.Ending percentage of cursor size when in insert mode. 
:h3 id=23.CursorOverStart
:lm margin=1.:i1.CursorOverStart
:p.Starting percentage of cursor size when in overstrike mode 
:h3 id=24.CursorOverEnd
:lm margin=1.:i1.CursorOverEnd
:p.Ending percentage of cursor size when in overstrike mode. 
:h3 id=25.SelectPathname
:lm margin=1.:i1.SelectPathname
:p.If set to 1, pathname will be selected by default when prompting for a
file in :link reftype=hd refid=274.FileOpen:elink. function. If set to 0, pathname will not be selected, this allows you
to quickly type a new filename, without erasing an entire entryfield. 
:h3 id=26.ShowMenuBar
:lm margin=1.:i1.ShowMenuBar
:p.If set to 1, main menu bar will be visible. 
:h3 id=27.ShowVScroll
:lm margin=1.:i1.ShowVScroll
:p.If set to 1, scroll bar will be visible. 
:h3 id=28.ShowHScroll
:lm margin=1.:i1.ShowHScroll
:p.If set to 1, scroll bar will be visible. 
:h3 id=29.KeepHistory
:lm margin=1.:i1.KeepHistory
:p.If set to 1, last file position and imput prompt history will be
loaded on startup and saved on exit. Can be overriden with command
line option '-h'. 
:h3 id=30.LoadDesktopOnEntry
:lm margin=1.:i1.LoadDesktopOnEntry
:p.If set to 1, all files listed in FTE.DSK in current directory or
FTE.EXE directory will be loaded into FTE. The desktop file can be
overriden with command line option '-d'. 
:p.If set to 2, desktop is only loaded (and saved) if there are no files
specified on the command line. 
:h3 id=31.SaveDesktopOnExit
:lm margin=1.:i1.SaveDesktopOnExit
:p.If set to 1, desktop will be automatically saved when :link reftype=hd refid=315.ExitEditor:elink. command is issued. 
:h3 id=32.KeepMessages
:lm margin=1.:i1.KeepMessages
:p.If set to 1, compiler messages will be kept until deleted by user. 
:h3 id=33.ScrollBorderX
:lm margin=1.:i1.ScrollBorderX
:p.Horizontal offset to the border before window starts scrolling. 
:h3 id=34.ScrollBorderY
:lm margin=1.:i1.ScrollBorderY
:p.Vertical offset to the border before window starts scrolling. 
:h3 id=35.ScrollJumpX
:lm margin=1.:i1.ScrollJumpX
:p.Scroll window by this many columns when cursor reaches scrolling
border. 
:h3 id=36.ScrollJumpY
:lm margin=1.:i1.ScrollJumpY
:p.Scroll window by this many lines when cursor reaches scrolling border.
:h3 id=37.C_*
:lm margin=1.:i1.C_*
:p.Define the C mode smart indentation parameters 
:p.See section on :link reftype=hd refid=38.configuring C mode indentation:elink.. 
:h3 id=38.REXX_Indent
:lm margin=1.:i1.REXX_Indent
:p.Defines the REXX basic indentation level 
:h2 id=39.CMode Smart Indentation
:lm margin=1.:i1.CMode Smart Indentation
:p.:hp2.Settings for CMode smart indentation:ehp2. 
:p.:dl compact tsize=10 break=all. 
:dt.:hp2.C_Indent:ehp2.
:dd.Basic C indentation level 
:dt.:hp2.C_BraceOfs:ehp2.
:dd.Brace '{' offset 
:dt.:hp2.C_CaseOfs:ehp2.
:dd.Offset of case and default statements 
:dt.:hp2.C_CaseDelta:ehp2.
:dd.Offsets of statements following case/default. 
:dt.:hp2.C_ClassOfs:ehp2.
:dd.Offset of public, private and protected 
:dt.:hp2.C_ClassDelta:ehp2.
:dd.Offset of statements following public, private, protected 
:dt.:hp2.C_ColonOfs:ehp2.
:dd.Offset of labels 
:dt.:hp2.C_CommentOfs:ehp2.
:dd.Offset of comments 
:dt.:hp2.C_CommentDelta:ehp2.
:dd.Offset of second line of comments 
:dt.:hp2.C_FirstLevelWidth:ehp2.
:dd.Width of the first indentation level (indent of '{' in the function
start). 
:dt.:hp2.C_FirstLevelIndent:ehp2.
:dd.Indentation of statements in the first indentation level. 
:dt.:hp2.C_ParenDelta:ehp2.
:dd.When >= 0, offset of continued text after '('. When set to -1, the
offset is equal to position of '(' plus one. :edl.
:p.Example 1&colon. :xmp.
class line {
public&colon.                   // C_ClassOfs = 0
    line();               // C_ClassDelta = 4
    ~line();
};

int main() {
    int x = 1;
    
    /*                    // C_CommentOfs = 0
     * check value        // C_CommentDelta = 1
     */
    
    puts("main");         // C_Indent = 4
    if (x)
    {                     // C_BraceOfs = 0
        switch (x) {
        case 1&colon.           // C_CaseOfs = 0
            puts("ok");   // C_CaseDelta = 4
            break;
        }
    }
end&colon.
    return 0;
}
:exmp.
:p.Example 2&colon. :xmp.
class line {
  public&colon.                     // C_ClassOfs = 2
    line();                   // C_ClassDelta = 2
    ~line();
};

int main() {
    int x = 1;
    
      /*                      // C_CommentOfs = 2
      ** check value          // C_CommentDelta = 0
      */
    
    puts("main");             // C_Indent = 4
    if (x)
    {                         // C_BraceOfs = 0
        switch (x) {
            case 1&colon.           // C_CaseOfs = 4
                puts("ok");   // C_CaseDelta = 4
                break;
        }
    }
end&colon.
    return 0;
}
:exmp.
:h1 id=40.Colors
:lm margin=1.:i1.Colors
:p.Colors are configured in COLOR.FTE file. 
:p.Syntax for color settings is&colon. 
:p.:hp2.color:ehp2. { { 'name', 'value' } ... } 
:p.Value is the PC character attribute first char is background color,
the second is foreground color. 
:p.Colors are as follows&colon. :xmp.
        0        Black
        1        Dark Blue
        2        Dark Green 
        3        Dark Cyan
        4        Dark Red
        5        Dark Magenta
        6        Orange
        7        Pale Gray
        8        Dark Gray
        9        Blue
        A        Green
        B        Cyan
        C        Red
        D        Magenta
        E        Yellow
        F        White
:exmp.q 
:h1 id=41.Mode Configuration
:lm margin=1.:i1.Mode Configuration
:p.fte allows each file extension to have a different editing mode. Mode
is a collection of editor settings such as keybindings, tab settings,
autoindent settings, syntax highlighting,... 
:p.Syntax of :hp2.mode:ehp2. command is 
:p.:xmp.
mode NAME { mode settings }
mode NAME&colon. PARENT { mode settings }
:exmp.
:p.Mode with name :hp1.NAME:ehp1.inherits settings from mode :hp1.PARENT:ehp1. if parent mode is specified at mode declaration. 
:p.When editor is searching for a mode to use for a file it will first
check if the mode has been overriden by a :link reftype=hd refid=275.FileOpenInMode:elink. command or a command line option (:hp2.-m:ehp2.). 
:p.Then it will check if the file name matches :link reftype=hd refid=82.FileNameRx:elink. defined in mode declarations. 
:p.If the mode has still not been found, it will read the first line (max
80 chars) of the file, and attempt to match the :link reftype=hd refid=83.FirstLineRx:elink. with the first line. 
:p.If this fails, the editor will use mode specified by :hp2.:link reftype=hd refid=13.DefaultModeName:elink.:ehp2. global setting to load a file. If that mode does not exist, first
mode defined in the configuration file will be used. 
.br

:h2 id=42.Mode Settings
:lm margin=1.:i1.Mode Settings
:p.
:p.The following settings can be specified for each mode&colon. 
:h3 id=43.ExpandTabs
:lm margin=1.:i1.ExpandTabs
:p.{0,1} 
:p.Should be set to 1 if tabs are to be expanded when displayed. Use :link reftype=hd refid=347.ToggleExpandTabs:elink. command to toggle during editing. 
:h4 id=44.TabSize
:lm margin=1.:i1.TabSize
:p.{1-32} 
:p.Tab size when tabs are shown expanded on display. 
:h4 id=45.AutoIndent
:lm margin=1.:i1.AutoIndent
:p.{0,1} 
:p.Should be set to 1 if autoindent is to be used. Use :link reftype=hd refid=345.ToggleAutoIndent:elink. command to toggle it on/off during editing. 
:h4 id=46.Insert
:lm margin=1.:i1.Insert
:p.{0,1} 
:p.If set to :hp2.1:ehp2., Insert mode is active by default. If set to :hp2.0:ehp2., Overwrite mode is active by default. 
:p.Use :link reftype=hd refid=346.ToggleInsert:elink. command to toggle it on/off during editing. 
:h4 id=47.StripChar
:lm margin=1.:i1.StripChar
:p.{ASCII code/-1} 
:p.This characted will be stripped if it is found the end of any line
when the file is being loaded. If it is set to :hp2.-1:ehp2., no characted will be stripped. 
:p.Usually used to strip 13 (CR) characters from DOS text files. 
:h4 id=48.LineChar
:lm margin=1.:i1.LineChar
:p.{ASCII code/-1} 
:p.This character is used as a line separator when loading a file. If set
to :hp2.-1:ehp2., there is no line separator. (:hp2.WARNING&colon. File will be loaded as one line if LineChar is set to
-1:ehp2.). 
:p.Usually set to 10 (LF) as standard text file line separator. 
:h4 id=49.AddCR
:lm margin=1.:i1.AddCR
:p.{0,1} 
:p.If set to :hp2.1:ehp2., CR (13, \r) character will be added to end of line when saving. 
:h4 id=50.AddLF
:lm margin=1.:i1.AddLF
:p.{0,1} 
:p.If set to :hp2.1:ehp2., LF (10, \n) characted will be added to end if line when saving. 
:h4 id=51.ForceNewLine
:lm margin=1.:i1.ForceNewLine
:p.{0,1} 
:p.Normally, when saving, the last line is saved without any CR/LF
characters. This setting will override that behaviour. 
:h4 id=52.Hilit
:lm margin=1.:i1.Hilit
:p.{0,1} 
:p.If set to :hp2.1:ehp2., syntax highliting will be active. 
:h4 id=53.ShowTabs
:lm margin=1.:i1.ShowTabs
:p.{0,1} 
:p.If set to :hp2.1:ehp2., tabs will be visible as circles (EPM-like). 
:h4 id=54.IndentMode
:lm margin=1.:i1.IndentMode
:p.{PLAIN,C,REXX} 
:p.Activates the specified smart indent mode. (PLAIN mode specifies no
smart audoindenting, just normal autoindent). 
:h4 id=55.Colorizer
:lm margin=1.:i1.Colorizer
:p.Specifies a previously declared :link reftype=hd refid=54.colorize:elink. mode to use for syntax highlighting in this editing mode. 
:h4 id=56.EventMap
:lm margin=1.:i1.EventMap
:p.Specify the name of existing eventmap to use for current mode. 
:h4 id=57.UndoLimit
:lm margin=1.:i1.UndoLimit
:p.{Number} 
:p.Limit undo to this many recent commands (-1 = unlimited) 
:h4 id=58.UndoMoves
:lm margin=1.:i1.UndoMoves
:p.{0,1} 
:p.If set to 1, all cursor movements will be recorded on undo stack. 
:h4 id=59.KeepBackups
:lm margin=1.:i1.KeepBackups
:p.{0,1} 
:p.If set to :hp2.0:ehp2., backup files will be deleted after a successful save operation. 
:h4 id=60.MatchCase
:lm margin=1.:i1.MatchCase
:p.{0,1} 
:p.If set to :hp2.0:ehp2., searches will be case insensitive. This can be toggled via :link reftype=hd refid=352.ToggleMatchCase:elink. command when editor is running. 
:h4 id=61.BackSpKillTab
:lm margin=1.:i1.BackSpKillTab
:p.{0,1} 
:p.If set to 1, :link reftype=hd refid=171.BackSpace:elink. will kill entire tabs instead of converting them to spaces. 
:h4 id=62.DeleteKillTab
:lm margin=1.:i1.DeleteKillTab
:p.{0,1} 
:p.If set to 1, :link reftype=hd refid=170.Delete:elink. will kill entire tabs instead of converting them to spaces. 
:h4 id=63.BackSpUnindents
:lm margin=1.:i1.BackSpUnindents
:p.{0,1} 
:p.If set to 1, :link reftype=hd refid=171.BackSpace:elink. will unindent to previous indentation level if issued on beginning of
line. 
:h4 id=64.SpaceTabs
:lm margin=1.:i1.SpaceTabs
:p.{0,1} 
:p.If set to 1, :link reftype=hd refid=262.InsertTab:elink. command will insert spaces instead of tabs. 
:h4 id=65.IndentWithTabs
:lm margin=1.:i1.IndentWithTabs
:p.{0,1} 
:p.If set to 1, indentation will be done using tabs instead of spaces. 
:h4 id=66.WordWrap
:lm margin=1.:i1.WordWrap
:p.{0,1,2} 
:p.If set to 1, editor wrap current line when right margin is reached. If
set to 2, editor will wrap current paragraph continously. Paragraphs
as recognised by :link reftype=hd refid=265.WrapPara:elink. command must be separated by blank lines. 
:h4 id=67.LeftMargin
:lm margin=1.:i1.LeftMargin
:p.{1-xx} 
:p.Left margin for word wrap (:link reftype=hd refid=265.WrapPara:elink. command). 
:h4 id=68.RightMargin
:lm margin=1.:i1.RightMargin
:p.{1-xx} 
:p.Right margin for word wrap (:link reftype=hd refid=265.WrapPara:elink. command). 
:h4 id=69.Trim
:lm margin=1.:i1.Trim
:p.{0,1} 
:p.If set to 1, spaces on the end of line will be trimmed when editing. 
:h4 id=70.ShowMarkers
:lm margin=1.:i1.ShowMarkers
:p.{0,1} 
:p.If set to 1, end of line and end of file markers will be shown. 
:h4 id=71.CursorTroughTabs
:lm margin=1.:i1.CursorTroughTabs
:p.{0,1} 
:p.If set to 1, editor will allow cursor to be positioned inside tabs. 
:h4 id=72.DefFindOpt
:lm margin=1.:i1.DefFindOpt
:p.'options' 
:p.Default search options for :link reftype=hd refid=296.Find:elink. command. 
:h4 id=73.DefFindReplaceOpt
:lm margin=1.:i1.DefFindReplaceOpt
:p.'options' 
:p.Default search/replace options for :link reftype=hd refid=297.FindReplace:elink. command. 
:h4 id=74.SaveFolds
:lm margin=1.:i1.SaveFolds
:p.{0,1,2} 
:p.If 0, folds are not saved. If 1, folds are saved at beginning of line,
if 2 folds are saved at end of line. 
:p.Folds are saved as comments in source files, depending on active
editing mode. 
:p.See mode settings :link reftype=hd refid=74.CommentStart:elink. and :link reftype=hd refid=75.CommentEnd:elink. for configuration of fold comments. 
:h4 id=75.CommentStart
:lm margin=1.:i1.CommentStart
:p."comment-start-string" 
:p.String that starts comments (for saving folds) 
:h4 id=76.CommentEnd
:lm margin=1.:i1.CommentEnd
:p."comment-end-string" 
:p.String that ends comments 
:h4 id=77.AutoHilitParen
:lm margin=1.:i1.AutoHilitParen
:p.{0,1} 
:p.If set to :hp2.1:ehp2., editor will automatically highlight the matching bracket if it is
visible on screen. This is equivalent to executing :link reftype=hd refid=305.HilitMatchBracket:elink. command. 
:h4 id=78.Abbreviations
:lm margin=1.:i1.Abbreviations
:p.{0,1} 
:p.If set to 1, abbreviation expansion will be active in this mode. 
:h4 id=79.BackSpKillBlock
:lm margin=1.:i1.BackSpKillBlock
:p.{0,1} 
:p.If set to 1, :link reftype=hd refid=171.BackSpace:elink. command will delete block if it is marked, otherwise it will delete
the previous character. 
:h4 id=80.DeleteKillBlock
:lm margin=1.:i1.DeleteKillBlock
:p.{0,1} 
:p.If set to 1, :link reftype=hd refid=170.Delete:elink. command will delete block if marked, instead of deleting the
character below cursor. 
:h4 id=81.PersistentBlocks
:lm margin=1.:i1.PersistentBlocks
:p.{0,1} 
:p.If set to 1, blocks will stay marked even if cursor is moved in the
file, if set to 0, block is unmarked as soon as the cursor is moved. 
:h4 id=82.InsertKillBlock
:lm margin=1.:i1.InsertKillBlock
:p.{0,1} 
:p.If set to 1, the marked block is deleted when a new character is
typed. 
:h4 id=83.FileNameRx
:lm margin=1.:i1.FileNameRx
:p."regexp" 
:p.Must be set to regexp that matches names of files that should be
edited in this mode. Has priority over :link reftype=hd refid=83.FirstLineRx:elink. 
:h4 id=84.FirstLineRx
:lm margin=1.:i1.FirstLineRx
:p."regexp" 
:p.Must be set to regex that matches the first line of files that should
be edited in this mode. This is checked only if no :link reftype=hd refid=82.FileNameRx:elink. matches the filename. 
:h4 id=85.RoutineRegexp
:lm margin=1.:i1.RoutineRegexp
:p."regexp" 
:p.Regular expression that matches function header. 
:p.Used by editor commands&colon. :link reftype=hd refid=314.ListRoutines:elink., :link reftype=hd refid=401.MoveFunctionPrev:elink., :link reftype=hd refid=402.MoveFunctionNext:elink., :link reftype=hd refid=217.BlockMarkFunction:elink., :link reftype=hd refid=400.IndentFunction:elink.. 
.br

:h3 id=86.Loading files in various formats
:lm margin=1.:i1.Loading files in various formats
:p.
:p.Here are settings for loading files in various formats&colon. 
:p.:dl compact tsize=10 break=all. 
:dt.DOS/Win/OS2/NT text files (CR/LF delimited)&colon. 
:dd.:xmp.
          StripChar      13
          LineChar       10
          AddCR          1
          AddLF          1
:exmp.
.br

:dt.Unix text files (LF delimited)&colon. 
:dd.:xmp.
          StripChar      -1
          LineChar       10
          AddCR          0
          AddLF          1
:exmp.
:dt.MAC text files (CR delimited)&colon. 
:dd.:xmp.
          StripChar      -1
          LineChar       13
          AddCR          1
          AddLF          0
:exmp.
:dt.Binary files (fixed record length)&colon. 
:dd.:xmp.
          StripChar      -1
          LineChar       -1
          AddCR          0
          AddLF          0
          LoadMargin     64
          ForceNewLine   0
:exmp.:edl.
.br

:h3 id=87.Configuration of Tab options
:lm margin=1.:i1.Configuration of Tab options
:p.
:h1 id=88.Event Bindings
:lm margin=1.:i1.Event Bindings
:p.eventmap section is used to bind editor commands to user events. 
:h2 id=89.Keybindings
:lm margin=1.:i1.Keybindings
:p.
:p.Keybindings are inherited from parent modes unless overriden. 
:p.Here are some examples of key specifiactions&colon. :dl compact tsize=10 break=all. 
:dt.[A]
:dd.Uppercase a 
:dt.[a]
:dd.Lowercase a 
:dt.[;]
:dd.Semicolon 
:dt.[A+A]
:dd.Alt+A 
:dt.[C+B]
:dd.Ctrl+B 
:dt.[A+C+F1]
:dd.Alt+Ctrl+F1 
:dt.[A+C+S+F1]
:dd.Alt+Ctrl+Shift+F1 
:dt.[A+Space]
:dd.Alt+Space 
:dt.[C+K_C+B]
:dd.Ctrl+K and then Ctrl+B (two keys) 
:dt.[C+A_C+B_C+C]
:dd.Ctrl+A Ctrl+B Ctrl+C must be pressed in sequence. 
:dt.[G+-]
:dd.Gray - 
:dt.[G++]
:dd.Gray + 
:dt.[C-S-X]
:dd.X, ignore the state of Ctrl and Shift keys. 
:dt.[C+\\]
:dd.Ctrl+Backslash 
:dt.[C+\[]
:dd.Ctrl+[ 
:dt.[C+G-Left]
:dd.Ctrl+Left, ignore difference between the two Left keys. 
:dt.[C+A-A]
:dd.Ctrl+A, ignore the state of Alt key. :edl.
:p.The following special keys are available (case sensitive)&colon. 
:p.:hp2.F1-F12 Home End PgUp PgDn Insert Delete Up Down Left Right Enter Esc
BackSp Space Tab Center:ehp2. 
:p.Keyname can be preceeded by modifiers :hp2.(A, C, G, S):ehp2.. If modifier is followed by a :hp2.+:ehp2. (plus), the modifier key must be pressed to match the key
specification. If the modifier key is followed by :hp2.-:ehp2. (minus), the state of the modifier key is ignored. 
:p.Multiple-key combinations can be specified by separating them with :hp2._:ehp2. (underline) 
:p.Keys are bound using the :hp2.key:ehp2. command&colon. 
:p.:hp2.key:ehp2. :hp2.[keyspec]:ehp2. { :link reftype=hd refid=94.editor commands:elink. } 
:p.ASCII characters >= 32 are bound to TypeChar by default. 
:p.Any number of commands can be bound to a key combination or menu item.
They are executed in sequence until one of them fails. 
:p.See :hp1.ui_fte.fte:ehp1. configuration file for examples and default configuration. 
:h2 id=90.Abbreviations
:lm margin=1.:i1.Abbreviations
:p.Abbreviations are used to automatically replace some text or run an
editor macro when some word is typed in. When a non-word character is
entered, the previous word is searched for in the list of
abbreviations. When it is found, it is either replaced with a new
string or a macro is executed. 
:p.Syntax&colon. :xmp.
abbrev 'old-word' 'new-string'

abbrev 'old-word' { Macro }
:exmp.
:p.Some examples of abbreviations&colon. :xmp.
    abbrev 'wcsw' 'WinCreateStdWindow';
    
    abbrev 'ifx' {
        KillWordPrev; InsertString 'if () {'; LineIndent; LineNew; 
        InsertString '}'; LineIndent; 
        MoveUp; MoveLineEnd; 3&colon.MoveLeft; 
        Fail; # do not insert typed character
    }
:exmp.
:p.The first one defines a replacement string, while the second one
defines an editor macro to be run. 
:p.For abbreviations to work, setting :link reftype=hd refid=77.Abbreviations:elink. must be set to 1 for active mode. 
:h2 id=91.EventMap Settings
:lm margin=1.:i1.EventMap Settings
:p.
:h3 id=92.MainMenu
:lm margin=1.:i1.MainMenu
:p."menu" 
:p.Main menu displayed when editing in this mode. 
:h3 id=93.LocalMenu
:lm margin=1.:i1.LocalMenu
:p."menu" 
:p.Local menu used when editing in this mode. 
:h1 id=94.Macro Commands
:lm margin=1.:i1.Macro Commands
:p.:ul compact. 
:li.:link reftype=hd refid=94.Cursor Movement:elink. 
:li.:link reftype=hd refid=157.Deleting Text:elink. 
:li.:link reftype=hd refid=172.Line Commands:elink. 
:li.:link reftype=hd refid=182.Block Commands:elink. 
:li.:link reftype=hd refid=219.Text Editing and Insertion:elink. 
:li.:link reftype=hd refid=222.Folding Text:elink. 
:li.:link reftype=hd refid=236.Bookmarks:elink. 
:li.:link reftype=hd refid=245.Character Translation:elink. 
:li.:link reftype=hd refid=273.File Commands:elink. 
:li.:link reftype=hd refid=285.Directory Commands:elink. 
:li.:link reftype=hd refid=294.Search and Replace:elink. 
:li.:link reftype=hd refid=306.Window Commands:elink. 
:li.:link reftype=hd refid=317.Compiler Support:elink. 
:li.:link reftype=hd refid=324.CVS Support:elink. 
:li.:link reftype=hd refid=335.TAGS Commands:elink. 
:li.:link reftype=hd refid=344.Option commands:elink. 
:li.:link reftype=hd refid=371.Other commands:elink. :eul.
.br

:h2 id=95.Cursor Movement
:lm margin=1.:i1.Cursor Movement
:p.:ul compact. 
:li.:link reftype=hd refid=95.MoveDown:elink. 
:li.:link reftype=hd refid=96.MoveUp:elink. 
:li.:link reftype=hd refid=97.MoveLeft:elink. 
:li.:link reftype=hd refid=98.MoveRight:elink. 
:li.:link reftype=hd refid=99.MovePrev:elink. 
:li.:link reftype=hd refid=100.MoveNext:elink. 
:li.:link reftype=hd refid=101.MoveWordLeft:elink. 
:li.:link reftype=hd refid=102.MoveWordRight:elink. 
:li.:link reftype=hd refid=103.MoveWordPrev:elink. 
:li.:link reftype=hd refid=104.MoveWordNext:elink. 
:li.:link reftype=hd refid=105.MoveWordEndLeft:elink. 
:li.:link reftype=hd refid=106.MoveWordEndRight:elink. 
:li.:link reftype=hd refid=107.MoveWordEndPrev:elink. 
:li.:link reftype=hd refid=108.MoveWordEndNext:elink. 
:li.:link reftype=hd refid=109.MoveWordOrCapLeft:elink. 
:li.:link reftype=hd refid=110.MoveWordOrCapRight:elink. 
:li.:link reftype=hd refid=111.MoveWordOrCapPrev:elink. 
:li.:link reftype=hd refid=112.MoveWordOrCapNext:elink. 
:li.:link reftype=hd refid=113.MoveWordOrCapEndLeft:elink. 
:li.:link reftype=hd refid=114.MoveWordOrCapEndRight:elink. 
:li.:link reftype=hd refid=115.MoveWordOrCapEndPrev:elink. 
:li.:link reftype=hd refid=116.MoveWordOrCapEndNext:elink. 
:li.:link reftype=hd refid=117.MoveLineStart:elink. 
:li.:link reftype=hd refid=118.MoveLineEnd:elink. 
:li.:link reftype=hd refid=119.MovePageStart:elink. 
:li.:link reftype=hd refid=120.MovePageEnd:elink. 
:li.:link reftype=hd refid=121.MovePageUp:elink. 
:li.:link reftype=hd refid=122.MovePageDown:elink. 
:li.:link reftype=hd refid=123.MoveFileStart:elink. 
:li.:link reftype=hd refid=124.MoveFileEnd:elink. 
:li.:link reftype=hd refid=125.MovePageLeft:elink. 
:li.:link reftype=hd refid=126.MovePageRight:elink. 
:li.:link reftype=hd refid=127.MoveBlockStart:elink. 
:li.:link reftype=hd refid=128.MoveBlockEnd:elink. 
:li.:link reftype=hd refid=129.MoveFirstNonWhite:elink. 
:li.:link reftype=hd refid=130.MoveLastNonWhite:elink. 
:li.:link reftype=hd refid=131.MovePrevEqualIndent:elink. 
:li.:link reftype=hd refid=132.MoveNextEqualIndent:elink. 
:li.:link reftype=hd refid=133.MovePrevTab:elink. 
:li.:link reftype=hd refid=134.MoveNextTab:elink. 
:li.:link reftype=hd refid=135.MoveTabStart:elink. 
:li.:link reftype=hd refid=136.MoveTabEnd:elink. 
:li.:link reftype=hd refid=137.MoveLineTop:elink. 
:li.:link reftype=hd refid=138.MoveLineCenter:elink. 
:li.:link reftype=hd refid=139.MoveLineBottom:elink. 
:li.:link reftype=hd refid=140.ScrollLeft:elink. 
:li.:link reftype=hd refid=141.ScrollRight:elink. 
:li.:link reftype=hd refid=142.ScrollDown:elink. 
:li.:link reftype=hd refid=143.ScrollUp:elink. 
:li.:link reftype=hd refid=144.MoveFoldTop:elink. 
:li.:link reftype=hd refid=145.MoveFoldPrev:elink. 
:li.:link reftype=hd refid=146.MoveFoldNext:elink. 
:li.:link reftype=hd refid=147.MoveBeginOrNonWhite:elink. 
:li.:link reftype=hd refid=148.MoveBeginLinePageFile:elink. 
:li.:link reftype=hd refid=149.MoveEndLinePageFile:elink. 
:li.:link reftype=hd refid=150.MoveToLine:elink. 
:li.:link reftype=hd refid=151.MoveToColumn:elink. 
:li.:link reftype=hd refid=152.MoveSavedPosCol:elink. 
:li.:link reftype=hd refid=153.MoveSavedPosRow:elink. 
:li.:link reftype=hd refid=154.MoveSavedPos:elink. 
:li.:link reftype=hd refid=155.SavePos:elink. 
:li.:link reftype=hd refid=156.MovePrevPos:elink. :eul.
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=70.CursorTroughTabs:elink., :link reftype=hd refid=94.Cursor Movement:elink., :link reftype=hd refid=157.Deleting Text:elink., :link reftype=hd refid=172.Line Commands:elink., :link reftype=hd refid=182.Block Commands:elink., :link reftype=hd refid=219.Text Editing and Insertion:elink., :link reftype=hd refid=222.Folding Text:elink., :link reftype=hd refid=236.Bookmarks:elink., :link reftype=hd refid=245.Character Translation:elink., :link reftype=hd refid=273.File Commands:elink., :link reftype=hd refid=285.Directory Commands:elink., :link reftype=hd refid=294.Search and Replace:elink., :link reftype=hd refid=306.Window Commands:elink., :link reftype=hd refid=317.Compiler Support:elink., :link reftype=hd refid=324.CVS Support:elink., :link reftype=hd refid=335.TAGS Commands:elink., :link reftype=hd refid=344.Option commands:elink., :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=96.MoveDown
:lm margin=1.:i1.MoveDown
:p.Move cursor to next line. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink..
.br

:h3 id=97.MoveUp
:lm margin=1.:i1.MoveUp
:p.Move cursor to previous line 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink..
.br

:h3 id=98.MoveLeft
:lm margin=1.:i1.MoveLeft
:p.Move cursor to previous column. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink..
.br

:h3 id=99.MoveRight
:lm margin=1.:i1.MoveRight
:p.Move cursor to next column. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink..
.br

:h3 id=100.MovePrev
:lm margin=1.:i1.MovePrev
:p.Move cursor to previous character. Moves to end of the previous line
if cursor is at the beginning of line. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink..
.br

:h3 id=101.MoveNext
:lm margin=1.:i1.MoveNext
:p.Move cursor to next character. Moves to the beginning of next line if
cursor is at the end of line. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink..
.br

:h3 id=102.MoveWordLeft
:lm margin=1.:i1.MoveWordLeft
:p.Move cursor to the beginning of the word on the left. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink..
.br

:h3 id=103.MoveWordRight
:lm margin=1.:i1.MoveWordRight
:p.Move cursor to the beginning of the word on the right. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink..
.br

:h3 id=104.MoveWordPrev
:lm margin=1.:i1.MoveWordPrev
:p.Move cursor to the beginning of the previous word. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink..
.br

:h3 id=105.MoveWordNext
:lm margin=1.:i1.MoveWordNext
:p.Move cursor to the beginning of the next word. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink..
.br

:h3 id=106.MoveWordEndLeft
:lm margin=1.:i1.MoveWordEndLeft
:p.Move cursor to the end of the previous word. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink..
.br

:h3 id=107.MoveWordEndRight
:lm margin=1.:i1.MoveWordEndRight
:p.Move cursor to the end of the word on the right. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink..
.br

:h3 id=108.MoveWordEndPrev
:lm margin=1.:i1.MoveWordEndPrev
:p.Move cursor to the end of the previous word. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink..
.br

:h3 id=109.MoveWordEndNext
:lm margin=1.:i1.MoveWordEndNext
:p.Move cursor to the end of the next word. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink..
.br

:h3 id=110.MoveWordOrCapLeft
:lm margin=1.:i1.MoveWordOrCapLeft
:p.Move cursor to the beginning of the word or capital letter on the
right. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink..
.br

:h3 id=111.MoveWordOrCapRight
:lm margin=1.:i1.MoveWordOrCapRight
:p.Move cursor to the beginning of the word or capital letter on the
left. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink..
.br

:h3 id=112.MoveWordOrCapPrev
:lm margin=1.:i1.MoveWordOrCapPrev
:p.Move cursor to the beginning of the previous word or to previous
capital letter. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink..
.br

:h3 id=113.MoveWordOrCapNext
:lm margin=1.:i1.MoveWordOrCapNext
:p.Move cursor to the beginning of the next word or to next capital
letter. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink..
.br

:h3 id=114.MoveWordOrCapEndLeft
:lm margin=1.:i1.MoveWordOrCapEndLeft
:p.Move cursor to the end of the word or capitals on the left. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink..
.br

:h3 id=115.MoveWordOrCapEndRight
:lm margin=1.:i1.MoveWordOrCapEndRight
:p.Move cursor to the end of the word or capitals on the right. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink..
.br

:h3 id=116.MoveWordOrCapEndPrev
:lm margin=1.:i1.MoveWordOrCapEndPrev
:p.Move cursor to the end of the previous word or capitals. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink..
.br

:h3 id=117.MoveWordOrCapEndNext
:lm margin=1.:i1.MoveWordOrCapEndNext
:p.Move cursor to the end of the next word or capitals. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink..
.br

:h3 id=118.MoveLineStart
:lm margin=1.:i1.MoveLineStart
:p.Move cursor to the beginning of line. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink..
.br

:h3 id=119.MoveLineEnd
:lm margin=1.:i1.MoveLineEnd
:p.Move cursor to the end of line. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink..
.br

:h3 id=120.MovePageStart
:lm margin=1.:i1.MovePageStart
:p.Move cursor to the first line on current page. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink..
.br

:h3 id=121.MovePageEnd
:lm margin=1.:i1.MovePageEnd
:p.Move cursor to the last line on currently page. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink..
.br

:h3 id=122.MovePageUp
:lm margin=1.:i1.MovePageUp
:p.Display previous page. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink..
.br

:h3 id=123.MovePageDown
:lm margin=1.:i1.MovePageDown
:p.Display next page. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink..
.br

:h3 id=124.MoveFileStart
:lm margin=1.:i1.MoveFileStart
:p.Move cursor to the beginning of file. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink..
.br

:h3 id=125.MoveFileEnd
:lm margin=1.:i1.MoveFileEnd
:p.Move cursor to the end of file. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink..
.br

:h3 id=126.MovePageLeft
:lm margin=1.:i1.MovePageLeft
:p.Scroll horizontally to display page on the left. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink..
.br

:h3 id=127.MovePageRight
:lm margin=1.:i1.MovePageRight
:p.Scroll horizontally to display page on the right. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink..
.br

:h3 id=128.MoveBlockStart
:lm margin=1.:i1.MoveBlockStart
:p.Move cursor to the beginning of block. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink..
.br

:h3 id=129.MoveBlockEnd
:lm margin=1.:i1.MoveBlockEnd
:p.Move cursor to end beginning of block. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink..
.br

:h3 id=130.MoveFirstNonWhite
:lm margin=1.:i1.MoveFirstNonWhite
:p.Move cursor to the first non-blank character on line. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink..
.br

:h3 id=131.MoveLastNonWhite
:lm margin=1.:i1.MoveLastNonWhite
:p.Move cursor to the last non-blank character on line. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink..
.br

:h3 id=132.MovePrevEqualIndent
:lm margin=1.:i1.MovePrevEqualIndent
:p.Move cursor to the previous line with equal indentation. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink..
.br

:h3 id=133.MoveNextEqualIndent
:lm margin=1.:i1.MoveNextEqualIndent
:p.Move cursor to the next line with equal indentation. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink..
.br

:h3 id=134.MovePrevTab
:lm margin=1.:i1.MovePrevTab
:p.Move cursor to the previous tab position. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink..
.br

:h3 id=135.MoveNextTab
:lm margin=1.:i1.MoveNextTab
:p.Move cursor to the next tab position. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink..
.br

:h3 id=136.MoveTabStart
:lm margin=1.:i1.MoveTabStart
:p.When cursor is on the tab characters, moves it to the beginning of the
tab. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink..
.br

:h3 id=137.MoveTabEnd
:lm margin=1.:i1.MoveTabEnd
:p.When cursor is on the tab characters, moves it to the end of the tab. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink..
.br

:h3 id=138.MoveLineTop
:lm margin=1.:i1.MoveLineTop
:p.Scroll the file to make the current line appear on the top of the
window. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink..
.br

:h3 id=139.MoveLineCenter
:lm margin=1.:i1.MoveLineCenter
:p.Scroll the file to make the current line appear on the center of the
window. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink..
.br

:h3 id=140.MoveLineBottom
:lm margin=1.:i1.MoveLineBottom
:p.Scroll the file to make the current line appear on the bottom of the
window. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink..
.br

:h3 id=141.ScrollLeft
:lm margin=1.:i1.ScrollLeft
:p.Scroll screen left. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink..
.br

:h3 id=142.ScrollRight
:lm margin=1.:i1.ScrollRight
:p.Scroll screen right. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink..
.br

:h3 id=143.ScrollDown
:lm margin=1.:i1.ScrollDown
:p.Scroll screen down. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink..
.br

:h3 id=144.ScrollUp
:lm margin=1.:i1.ScrollUp
:p.Scroll screen up. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink..
.br

:h3 id=145.MoveFoldTop
:lm margin=1.:i1.MoveFoldTop
:p.Move to the beginning of current fold. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink..
.br

:h3 id=146.MoveFoldPrev
:lm margin=1.:i1.MoveFoldPrev
:p.Move to the beginning of previous fold. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink..
.br

:h3 id=147.MoveFoldNext
:lm margin=1.:i1.MoveFoldNext
:p.Move to the beginning of next fold. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink..
.br

:h3 id=148.MoveBeginOrNonWhite
:lm margin=1.:i1.MoveBeginOrNonWhite
:p.Move to beginning of line, or to first non blank character 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink..
.br

:h3 id=149.MoveBeginLinePageFile
:lm margin=1.:i1.MoveBeginLinePageFile
:p.Move to the beginning of line. If there already, move to the beginning
page. If there already, move to the beginning of file. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink..
.br

:h3 id=150.MoveEndLinePageFile
:lm margin=1.:i1.MoveEndLinePageFile
:p.Move to the end of line. If there already, move to the end page. If
there already, move to the end of file. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink..
.br

:h3 id=151.MoveToLine
:lm margin=1.:i1.MoveToLine
:p.Move to line number given as argument 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink..
.br

:h3 id=152.MoveToColumn
:lm margin=1.:i1.MoveToColumn
:p.Move to column given as argument 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink..
.br

:h3 id=153.MoveSavedPosCol
:lm margin=1.:i1.MoveSavedPosCol
:p.Move to column from saved position 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink..
.br

:h3 id=154.MoveSavedPosRow
:lm margin=1.:i1.MoveSavedPosRow
:p.Move to line from saved position 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink..
.br

:h3 id=155.MoveSavedPos
:lm margin=1.:i1.MoveSavedPos
:p.Move to saved position 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink..
.br

:h3 id=156.SavePos
:lm margin=1.:i1.SavePos
:p.Save current cursor position 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink..
.br

:h3 id=157.MovePrevPos
:lm margin=1.:i1.MovePrevPos
:p.Move to last cursor position 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink..
.br

:h2 id=158.Deleting Text
:lm margin=1.:i1.Deleting Text
:p.:ul compact. 
:li.:link reftype=hd refid=158.KillLine:elink. 
:li.:link reftype=hd refid=159.KillChar:elink. 
:li.:link reftype=hd refid=160.KillCharPrev:elink. 
:li.:link reftype=hd refid=161.KillWord:elink. 
:li.:link reftype=hd refid=162.KillWordPrev:elink. 
:li.:link reftype=hd refid=163.KillWordOrCap:elink. 
:li.:link reftype=hd refid=164.KillWordOrCapPrev:elink. 
:li.:link reftype=hd refid=165.KillToLineStart:elink. 
:li.:link reftype=hd refid=166.KillToLineEnd:elink. 
:li.:link reftype=hd refid=167.KillBlock:elink. 
:li.:link reftype=hd refid=168.KillBlockOrChar:elink. 
:li.:link reftype=hd refid=169.KillBlockOrCharPrev:elink. 
:li.:link reftype=hd refid=170.Delete:elink. 
:li.:link reftype=hd refid=171.BackSpace:elink. :eul.
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink., :link reftype=hd refid=157.Deleting Text:elink., :link reftype=hd refid=172.Line Commands:elink., :link reftype=hd refid=182.Block Commands:elink., :link reftype=hd refid=219.Text Editing and Insertion:elink., :link reftype=hd refid=222.Folding Text:elink., :link reftype=hd refid=236.Bookmarks:elink., :link reftype=hd refid=245.Character Translation:elink., :link reftype=hd refid=273.File Commands:elink., :link reftype=hd refid=285.Directory Commands:elink., :link reftype=hd refid=294.Search and Replace:elink., :link reftype=hd refid=306.Window Commands:elink., :link reftype=hd refid=317.Compiler Support:elink., :link reftype=hd refid=324.CVS Support:elink., :link reftype=hd refid=335.TAGS Commands:elink., :link reftype=hd refid=344.Option commands:elink., :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=159.KillLine
:lm margin=1.:i1.KillLine
:p.Delete current line. If the line is the last line in the file, only
the text is deleted. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=157.Deleting Text:elink..
.br

:h3 id=160.KillChar
:lm margin=1.:i1.KillChar
:p.Delete character under (after) cursor. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=157.Deleting Text:elink..
.br

:h3 id=161.KillCharPrev
:lm margin=1.:i1.KillCharPrev
:p.Delete character before cursor. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=157.Deleting Text:elink..
.br

:h3 id=162.KillWord
:lm margin=1.:i1.KillWord
:p.Delete the word after cursor. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=157.Deleting Text:elink..
.br

:h3 id=163.KillWordPrev
:lm margin=1.:i1.KillWordPrev
:p.Delete the word before cursor. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=157.Deleting Text:elink..
.br

:h3 id=164.KillWordOrCap
:lm margin=1.:i1.KillWordOrCap
:p.Delete word or capitals after cursor. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=157.Deleting Text:elink..
.br

:h3 id=165.KillWordOrCapPrev
:lm margin=1.:i1.KillWordOrCapPrev
:p.Delete word or capitals before cursor. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=157.Deleting Text:elink..
.br

:h3 id=166.KillToLineStart
:lm margin=1.:i1.KillToLineStart
:p.Delete characters to the beginning of line. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=157.Deleting Text:elink..
.br

:h3 id=167.KillToLineEnd
:lm margin=1.:i1.KillToLineEnd
:p.Delete characters to the end of line. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=157.Deleting Text:elink..
.br

:h3 id=168.KillBlock
:lm margin=1.:i1.KillBlock
:p.Delete block. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=157.Deleting Text:elink..
.br

:h3 id=169.KillBlockOrChar
:lm margin=1.:i1.KillBlockOrChar
:p.If block is marked, delete it, otherwise delete character under
cursor. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=157.Deleting Text:elink..
.br

:h3 id=170.KillBlockOrCharPrev
:lm margin=1.:i1.KillBlockOrCharPrev
:p.If block is marked, delete it, otherwise delete character before
cursor. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=157.Deleting Text:elink..
.br

:h3 id=171.Delete
:lm margin=1.:i1.Delete
:p.Delete character under (after) cursor. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=61.DeleteKillTab:elink., :link reftype=hd refid=79.DeleteKillBlock:elink., :link reftype=hd refid=157.Deleting Text:elink..
.br

:h3 id=172.BackSpace
:lm margin=1.:i1.BackSpace
:p.Delete character before cursor. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=60.BackSpKillTab:elink., :link reftype=hd refid=78.BackSpKillBlock:elink., :link reftype=hd refid=157.Deleting Text:elink..
.br

:h2 id=173.Line Commands
:lm margin=1.:i1.Line Commands
:p.:ul compact. 
:li.:link reftype=hd refid=173.LineInsert:elink. 
:li.:link reftype=hd refid=174.LineAdd:elink. 
:li.:link reftype=hd refid=175.LineSplit:elink. 
:li.:link reftype=hd refid=176.LineJoin:elink. 
:li.:link reftype=hd refid=177.LineNew:elink. 
:li.:link reftype=hd refid=178.LineIndent:elink. 
:li.:link reftype=hd refid=179.LineTrim:elink. 
:li.:link reftype=hd refid=180.LineDuplicate:elink. 
:li.:link reftype=hd refid=181.LineCenter:elink. :eul.
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink., :link reftype=hd refid=157.Deleting Text:elink., :link reftype=hd refid=172.Line Commands:elink., :link reftype=hd refid=182.Block Commands:elink., :link reftype=hd refid=219.Text Editing and Insertion:elink., :link reftype=hd refid=222.Folding Text:elink., :link reftype=hd refid=236.Bookmarks:elink., :link reftype=hd refid=245.Character Translation:elink., :link reftype=hd refid=273.File Commands:elink., :link reftype=hd refid=285.Directory Commands:elink., :link reftype=hd refid=294.Search and Replace:elink., :link reftype=hd refid=306.Window Commands:elink., :link reftype=hd refid=317.Compiler Support:elink., :link reftype=hd refid=324.CVS Support:elink., :link reftype=hd refid=335.TAGS Commands:elink., :link reftype=hd refid=344.Option commands:elink., :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=174.LineInsert
:lm margin=1.:i1.LineInsert
:p.Insert a new line before the current one. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=172.Line Commands:elink..
.br

:h3 id=175.LineAdd
:lm margin=1.:i1.LineAdd
:p.Add a new line after the current one. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=172.Line Commands:elink..
.br

:h3 id=176.LineSplit
:lm margin=1.:i1.LineSplit
:p.Split current line after cursor position 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=172.Line Commands:elink..
.br

:h3 id=177.LineJoin
:lm margin=1.:i1.LineJoin
:p.Join current line with next one. If cursor is positioned beyond the
end of line, the current line is first padded with whitespace. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=172.Line Commands:elink..
.br

:h3 id=178.LineNew
:lm margin=1.:i1.LineNew
:p.Append a new line and move to the beginning of new line. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=172.Line Commands:elink..
.br

:h3 id=179.LineIndent
:lm margin=1.:i1.LineIndent
:p.Reindent current line. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=172.Line Commands:elink..
.br

:h3 id=180.LineTrim
:lm margin=1.:i1.LineTrim
:p.Trim whitespace at the end of current line. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=172.Line Commands:elink..
.br

:h3 id=181.LineDuplicate
:lm margin=1.:i1.LineDuplicate
:p.Duplicate the current line. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=172.Line Commands:elink..
.br

:h3 id=182.LineCenter
:lm margin=1.:i1.LineCenter
:p.Center the current line 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=172.Line Commands:elink..
.br

:h2 id=183.Block Commands
:lm margin=1.:i1.Block Commands
:p.:ul compact. 
:li.:link reftype=hd refid=183.BlockBegin:elink. 
:li.:link reftype=hd refid=184.BlockEnd:elink. 
:li.:link reftype=hd refid=185.BlockUnmark:elink. 
:li.:link reftype=hd refid=186.BlockCut:elink. 
:li.:link reftype=hd refid=187.BlockCopy:elink. 
:li.:link reftype=hd refid=188.BlockCutAppend:elink. 
:li.:link reftype=hd refid=189.BlockCopyAppend:elink. 
:li.:link reftype=hd refid=190.BlockClear:elink. 
:li.:link reftype=hd refid=191.BlockPaste:elink. 
:li.:link reftype=hd refid=192.BlockKill:elink. 
:li.:link reftype=hd refid=193.BlockIndent:elink. 
:li.:link reftype=hd refid=194.BlockUnindent:elink. 
:li.:link reftype=hd refid=195.BlockMarkStream:elink. 
:li.:link reftype=hd refid=196.BlockMarkLine:elink. 
:li.:link reftype=hd refid=197.BlockMarkColumn:elink. 
:li.:link reftype=hd refid=198.BlockExtendBegin:elink. 
:li.:link reftype=hd refid=199.BlockExtendEnd:elink. 
:li.:link reftype=hd refid=200.BlockReIndent:elink. 
:li.:link reftype=hd refid=201.BlockSelectWord:elink. 
:li.:link reftype=hd refid=202.BlockSelectLine:elink. 
:li.:link reftype=hd refid=203.BlockSelectPara:elink. 
:li.:link reftype=hd refid=204.BlockPasteStream:elink. 
:li.:link reftype=hd refid=205.BlockPasteLine:elink. 
:li.:link reftype=hd refid=206.BlockPasteColumn:elink. 
:li.:link reftype=hd refid=207.BlockPrint:elink. 
:li.:link reftype=hd refid=208.BlockRead:elink. 
:li.:link reftype=hd refid=209.BlockReadStream:elink. 
:li.:link reftype=hd refid=210.BlockReadLine:elink. 
:li.:link reftype=hd refid=211.BlockReadColumn:elink. 
:li.:link reftype=hd refid=212.BlockWrite:elink. 
:li.:link reftype=hd refid=213.BlockSort:elink. 
:li.:link reftype=hd refid=214.BlockSortReverse:elink. 
:li.:link reftype=hd refid=215.BlockUnTab:elink. 
:li.:link reftype=hd refid=216.BlockEnTab:elink. 
:li.:link reftype=hd refid=217.BlockMarkFunction:elink. 
:li.:link reftype=hd refid=218.BlockTrim:elink. :eul.
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink., :link reftype=hd refid=157.Deleting Text:elink., :link reftype=hd refid=172.Line Commands:elink., :link reftype=hd refid=182.Block Commands:elink., :link reftype=hd refid=219.Text Editing and Insertion:elink., :link reftype=hd refid=222.Folding Text:elink., :link reftype=hd refid=236.Bookmarks:elink., :link reftype=hd refid=245.Character Translation:elink., :link reftype=hd refid=273.File Commands:elink., :link reftype=hd refid=285.Directory Commands:elink., :link reftype=hd refid=294.Search and Replace:elink., :link reftype=hd refid=306.Window Commands:elink., :link reftype=hd refid=317.Compiler Support:elink., :link reftype=hd refid=324.CVS Support:elink., :link reftype=hd refid=335.TAGS Commands:elink., :link reftype=hd refid=344.Option commands:elink., :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=184.BlockBegin
:lm margin=1.:i1.BlockBegin
:p.Set block beginning to current position. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=182.Block Commands:elink..
.br

:h3 id=185.BlockEnd
:lm margin=1.:i1.BlockEnd
:p.Set block end to current position. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=182.Block Commands:elink..
.br

:h3 id=186.BlockUnmark
:lm margin=1.:i1.BlockUnmark
:p.Unmark block. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=182.Block Commands:elink..
.br

:h3 id=187.BlockCut
:lm margin=1.:i1.BlockCut
:p.Cut selected block to clipboard. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=182.Block Commands:elink..
.br

:h3 id=188.BlockCopy
:lm margin=1.:i1.BlockCopy
:p.Copy selected block to clipboard. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=182.Block Commands:elink..
.br

:h3 id=189.BlockCutAppend
:lm margin=1.:i1.BlockCutAppend
:p.Cut selected block and append it to clipboard. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=182.Block Commands:elink..
.br

:h3 id=190.BlockCopyAppend
:lm margin=1.:i1.BlockCopyAppend
:p.Append selected block to clipboard. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=182.Block Commands:elink..
.br

:h3 id=191.BlockClear
:lm margin=1.:i1.BlockClear
:p.Clear selected block 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=182.Block Commands:elink..
.br

:h3 id=192.BlockPaste
:lm margin=1.:i1.BlockPaste
:p.Paste clipboard to current position. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=182.Block Commands:elink..
.br

:h3 id=193.BlockKill
:lm margin=1.:i1.BlockKill
:p.Delete selected text. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=182.Block Commands:elink..
.br

:h3 id=194.BlockIndent
:lm margin=1.:i1.BlockIndent
:p.Indent block by 1 character. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=182.Block Commands:elink..
.br

:h3 id=195.BlockUnindent
:lm margin=1.:i1.BlockUnindent
:p.Unindent block by 1 character. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=182.Block Commands:elink..
.br

:h3 id=196.BlockMarkStream
:lm margin=1.:i1.BlockMarkStream
:p.Start/stop marking stream block. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=182.Block Commands:elink..
.br

:h3 id=197.BlockMarkLine
:lm margin=1.:i1.BlockMarkLine
:p.Start/stop marking line block. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=182.Block Commands:elink..
.br

:h3 id=198.BlockMarkColumn
:lm margin=1.:i1.BlockMarkColumn
:p.Start/stop marking column block. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=182.Block Commands:elink..
.br

:h3 id=199.BlockExtendBegin
:lm margin=1.:i1.BlockExtendBegin
:p.Start extending selected block. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=182.Block Commands:elink..
.br

:h3 id=200.BlockExtendEnd
:lm margin=1.:i1.BlockExtendEnd
:p.Stop extending selected block. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=182.Block Commands:elink..
.br

:h3 id=201.BlockReIndent
:lm margin=1.:i1.BlockReIndent
:p.Reindent entire block (C/REXX mode) 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=182.Block Commands:elink..
.br

:h3 id=202.BlockSelectWord
:lm margin=1.:i1.BlockSelectWord
:p.Select word under cursor as block. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=182.Block Commands:elink..
.br

:h3 id=203.BlockSelectLine
:lm margin=1.:i1.BlockSelectLine
:p.Select current line as block. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=182.Block Commands:elink..
.br

:h3 id=204.BlockSelectPara
:lm margin=1.:i1.BlockSelectPara
:p.Select current paragraph (delimited by blank lines) as block. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=182.Block Commands:elink..
.br

:h3 id=205.BlockPasteStream
:lm margin=1.:i1.BlockPasteStream
:p.Paste clipboard to current position as stream block. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=182.Block Commands:elink..
.br

:h3 id=206.BlockPasteLine
:lm margin=1.:i1.BlockPasteLine
:p.Paste clipboard to current position as line block. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=182.Block Commands:elink..
.br

:h3 id=207.BlockPasteColumn
:lm margin=1.:i1.BlockPasteColumn
:p.Paste clipboard to current position as column block. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=182.Block Commands:elink..
.br

:h3 id=208.BlockPrint
:lm margin=1.:i1.BlockPrint
:p.Print a block to configured device. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=182.Block Commands:elink..
.br

:h3 id=209.BlockRead
:lm margin=1.:i1.BlockRead
:p.Read block from file. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=182.Block Commands:elink..
.br

:h3 id=210.BlockReadStream
:lm margin=1.:i1.BlockReadStream
:p.Read block from file as stream block 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=182.Block Commands:elink..
.br

:h3 id=211.BlockReadLine
:lm margin=1.:i1.BlockReadLine
:p.Read block from file as line block 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=182.Block Commands:elink..
.br

:h3 id=212.BlockReadColumn
:lm margin=1.:i1.BlockReadColumn
:p.Read block from file as column block 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=182.Block Commands:elink..
.br

:h3 id=213.BlockWrite
:lm margin=1.:i1.BlockWrite
:p.Write marked block to file. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=182.Block Commands:elink..
.br

:h3 id=214.BlockSort
:lm margin=1.:i1.BlockSort
:p.Sorts the marked block in ascending order. If mode setting MatchCase
is set, characters will be compared case sensitively. When block is
marked in Stream or :link reftype=hd refid=196.Line:elink. mode, the entire lines in marked block will be compared. When block
is marked in :link reftype=hd refid=197.Column:elink. mode, only characters within marked columns will be compared. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=182.Block Commands:elink..
.br

:h3 id=215.BlockSortReverse
:lm margin=1.:i1.BlockSortReverse
:p.Sorts the marked block in descending order. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=182.Block Commands:elink..
.br

:h3 id=216.BlockUnTab
:lm margin=1.:i1.BlockUnTab
:p.Remove tabs from marked lines. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=182.Block Commands:elink..
.br

:h3 id=217.BlockEnTab
:lm margin=1.:i1.BlockEnTab
:p.Generate and optimize tabs in marked lines. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=182.Block Commands:elink..
.br

:h3 id=218.BlockMarkFunction
:lm margin=1.:i1.BlockMarkFunction
:p.Mark current function as block. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=182.Block Commands:elink..
.br

:h3 id=219.BlockTrim
:lm margin=1.:i1.BlockTrim
:p.Trim end-of-line whitespace 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=182.Block Commands:elink..
.br

:h2 id=220.Text Editing and Insertion
:lm margin=1.:i1.Text Editing and Insertion
:p.:ul compact. 
:li.:link reftype=hd refid=220.Undo:elink. 
:li.:link reftype=hd refid=221.Redo:elink. :eul.
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink., :link reftype=hd refid=157.Deleting Text:elink., :link reftype=hd refid=172.Line Commands:elink., :link reftype=hd refid=182.Block Commands:elink., :link reftype=hd refid=219.Text Editing and Insertion:elink., :link reftype=hd refid=222.Folding Text:elink., :link reftype=hd refid=236.Bookmarks:elink., :link reftype=hd refid=245.Character Translation:elink., :link reftype=hd refid=273.File Commands:elink., :link reftype=hd refid=285.Directory Commands:elink., :link reftype=hd refid=294.Search and Replace:elink., :link reftype=hd refid=306.Window Commands:elink., :link reftype=hd refid=317.Compiler Support:elink., :link reftype=hd refid=324.CVS Support:elink., :link reftype=hd refid=335.TAGS Commands:elink., :link reftype=hd refid=344.Option commands:elink., :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=221.Undo
:lm margin=1.:i1.Undo
:p.Undo last operation 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=219.Text Editing and Insertion:elink..
.br

:h3 id=222.Redo
:lm margin=1.:i1.Redo
:p.Redo last undone operation. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=219.Text Editing and Insertion:elink..
.br

:h2 id=223.Folding Text
:lm margin=1.:i1.Folding Text
:p.:ul compact. 
:li.:link reftype=hd refid=223.FoldCreate:elink. 
:li.:link reftype=hd refid=224.FoldCreateByRegexp:elink. 
:li.:link reftype=hd refid=225.FoldCreateAtRoutines:elink. 
:li.:link reftype=hd refid=226.FoldDestroy:elink. 
:li.:link reftype=hd refid=227.FoldDestroyAll:elink. 
:li.:link reftype=hd refid=228.FoldPromote:elink. 
:li.:link reftype=hd refid=229.FoldDemote:elink. 
:li.:link reftype=hd refid=230.FoldOpen:elink. 
:li.:link reftype=hd refid=231.FoldOpenNested:elink. 
:li.:link reftype=hd refid=232.FoldClose:elink. 
:li.:link reftype=hd refid=233.FoldOpenAll:elink. 
:li.:link reftype=hd refid=234.FoldCloseAll:elink. 
:li.:link reftype=hd refid=235.FoldToggleOpenClose:elink. :eul.
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink., :link reftype=hd refid=157.Deleting Text:elink., :link reftype=hd refid=172.Line Commands:elink., :link reftype=hd refid=182.Block Commands:elink., :link reftype=hd refid=219.Text Editing and Insertion:elink., :link reftype=hd refid=222.Folding Text:elink., :link reftype=hd refid=236.Bookmarks:elink., :link reftype=hd refid=245.Character Translation:elink., :link reftype=hd refid=273.File Commands:elink., :link reftype=hd refid=285.Directory Commands:elink., :link reftype=hd refid=294.Search and Replace:elink., :link reftype=hd refid=306.Window Commands:elink., :link reftype=hd refid=317.Compiler Support:elink., :link reftype=hd refid=324.CVS Support:elink., :link reftype=hd refid=335.TAGS Commands:elink., :link reftype=hd refid=344.Option commands:elink., :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=224.FoldCreate
:lm margin=1.:i1.FoldCreate
:p.Create fold 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=222.Folding Text:elink..
.br

:h3 id=225.FoldCreateByRegexp
:lm margin=1.:i1.FoldCreateByRegexp
:p.Create folds at lines matching a regular expression 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=222.Folding Text:elink..
.br

:h3 id=226.FoldCreateAtRoutines
:lm margin=1.:i1.FoldCreateAtRoutines
:p.Create folds at lines matching RoutineRx 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=222.Folding Text:elink..
.br

:h3 id=227.FoldDestroy
:lm margin=1.:i1.FoldDestroy
:p.Destroy fold at current line 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=222.Folding Text:elink..
.br

:h3 id=228.FoldDestroyAll
:lm margin=1.:i1.FoldDestroyAll
:p.Destroy all folds in the file 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=222.Folding Text:elink..
.br

:h3 id=229.FoldPromote
:lm margin=1.:i1.FoldPromote
:p.Promote fold to outer level 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=222.Folding Text:elink..
.br

:h3 id=230.FoldDemote
:lm margin=1.:i1.FoldDemote
:p.Demote fold to inner level 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=222.Folding Text:elink..
.br

:h3 id=231.FoldOpen
:lm margin=1.:i1.FoldOpen
:p.Open fold at current line 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=222.Folding Text:elink..
.br

:h3 id=232.FoldOpenNested
:lm margin=1.:i1.FoldOpenNested
:p.Open fold and nested folds 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=222.Folding Text:elink..
.br

:h3 id=233.FoldClose
:lm margin=1.:i1.FoldClose
:p.Close current fold 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=222.Folding Text:elink..
.br

:h3 id=234.FoldOpenAll
:lm margin=1.:i1.FoldOpenAll
:p.Open all folds in the file 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=222.Folding Text:elink..
.br

:h3 id=235.FoldCloseAll
:lm margin=1.:i1.FoldCloseAll
:p.Close all folds in the file 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=222.Folding Text:elink..
.br

:h3 id=236.FoldToggleOpenClose
:lm margin=1.:i1.FoldToggleOpenClose
:p.Toggle open/close current fold. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=222.Folding Text:elink..
.br

:h2 id=237.Bookmarks
:lm margin=1.:i1.Bookmarks
:p.:ul compact. 
:li.:link reftype=hd refid=237.PlaceBookmark:elink. 
:li.:link reftype=hd refid=238.RemoveBookmark:elink. 
:li.:link reftype=hd refid=239.GotoBookmark:elink. 
:li.:link reftype=hd refid=240.PlaceGlobalBookmark:elink. 
:li.:link reftype=hd refid=241.RemoveGlobalBookmark:elink. 
:li.:link reftype=hd refid=242.GotoGlobalBookmark:elink. 
:li.:link reftype=hd refid=243.PushGlobalBookmark:elink. 
:li.:link reftype=hd refid=244.PopGlobalBookmark:elink. :eul.
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink., :link reftype=hd refid=157.Deleting Text:elink., :link reftype=hd refid=172.Line Commands:elink., :link reftype=hd refid=182.Block Commands:elink., :link reftype=hd refid=219.Text Editing and Insertion:elink., :link reftype=hd refid=222.Folding Text:elink., :link reftype=hd refid=236.Bookmarks:elink., :link reftype=hd refid=245.Character Translation:elink., :link reftype=hd refid=273.File Commands:elink., :link reftype=hd refid=285.Directory Commands:elink., :link reftype=hd refid=294.Search and Replace:elink., :link reftype=hd refid=306.Window Commands:elink., :link reftype=hd refid=317.Compiler Support:elink., :link reftype=hd refid=324.CVS Support:elink., :link reftype=hd refid=335.TAGS Commands:elink., :link reftype=hd refid=344.Option commands:elink., :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=238.PlaceBookmark
:lm margin=1.:i1.PlaceBookmark
:p.Place a file-local bookmark. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=236.Bookmarks:elink..
.br

:h3 id=239.RemoveBookmark
:lm margin=1.:i1.RemoveBookmark
:p.Place a file-local bookmark. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=236.Bookmarks:elink..
.br

:h3 id=240.GotoBookmark
:lm margin=1.:i1.GotoBookmark
:p.Go to file-local bookmark location. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=236.Bookmarks:elink..
.br

:h3 id=241.PlaceGlobalBookmark
:lm margin=1.:i1.PlaceGlobalBookmark
:p.Place global (persistent) bookmark. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=236.Bookmarks:elink..
.br

:h3 id=242.RemoveGlobalBookmark
:lm margin=1.:i1.RemoveGlobalBookmark
:p.Remove global bookmark. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=236.Bookmarks:elink..
.br

:h3 id=243.GotoGlobalBookmark
:lm margin=1.:i1.GotoGlobalBookmark
:p.Go to global bookmark location. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=236.Bookmarks:elink..
.br

:h3 id=244.PushGlobalBookmark
:lm margin=1.:i1.PushGlobalBookmark
:p.Push global bookmark (named as #<num>) to stack. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=236.Bookmarks:elink..
.br

:h3 id=245.PopGlobalBookmark
:lm margin=1.:i1.PopGlobalBookmark
:p.Pop global bookmark from stack. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=236.Bookmarks:elink..
.br

:h2 id=246.Character Translation
:lm margin=1.:i1.Character Translation
:p.:ul compact. 
:li.:link reftype=hd refid=246.CharCaseUp:elink. 
:li.:link reftype=hd refid=247.CharCaseDown:elink. 
:li.:link reftype=hd refid=248.CharCaseToggle:elink. 
:li.:link reftype=hd refid=249.CharTrans:elink. 
:li.:link reftype=hd refid=250.LineCaseUp:elink. 
:li.:link reftype=hd refid=251.LineCaseDown:elink. 
:li.:link reftype=hd refid=252.LineCaseToggle:elink. 
:li.:link reftype=hd refid=253.LineTrans:elink. 
:li.:link reftype=hd refid=254.BlockCaseUp:elink. 
:li.:link reftype=hd refid=255.BlockCaseDown:elink. 
:li.:link reftype=hd refid=256.BlockCaseToggle:elink. 
:li.:link reftype=hd refid=257.BlockTrans:elink. 
:li.:link reftype=hd refid=258.InsertString:elink. 
:li.:link reftype=hd refid=259.InsertSpace:elink. 
:li.:link reftype=hd refid=260.InsertChar:elink. 
:li.:link reftype=hd refid=261.TypeChar:elink. 
:li.:link reftype=hd refid=262.InsertTab:elink. 
:li.:link reftype=hd refid=263.InsertSpacesToTab:elink. 
:li.:link reftype=hd refid=264.SelfInsert:elink. 
:li.:link reftype=hd refid=265.WrapPara:elink. 
:li.:link reftype=hd refid=266.InsPrevLineChar:elink. 
:li.:link reftype=hd refid=267.InsPrevLineToEol:elink. 
:li.:link reftype=hd refid=268.CompleteWord:elink. 
:li.:link reftype=hd refid=269.FilePrev:elink. 
:li.:link reftype=hd refid=270.FileNext:elink. 
:li.:link reftype=hd refid=271.FileLast:elink. 
:li.:link reftype=hd refid=272.SwitchTo:elink. :eul.
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink., :link reftype=hd refid=157.Deleting Text:elink., :link reftype=hd refid=172.Line Commands:elink., :link reftype=hd refid=182.Block Commands:elink., :link reftype=hd refid=219.Text Editing and Insertion:elink., :link reftype=hd refid=222.Folding Text:elink., :link reftype=hd refid=236.Bookmarks:elink., :link reftype=hd refid=245.Character Translation:elink., :link reftype=hd refid=273.File Commands:elink., :link reftype=hd refid=285.Directory Commands:elink., :link reftype=hd refid=294.Search and Replace:elink., :link reftype=hd refid=306.Window Commands:elink., :link reftype=hd refid=317.Compiler Support:elink., :link reftype=hd refid=324.CVS Support:elink., :link reftype=hd refid=335.TAGS Commands:elink., :link reftype=hd refid=344.Option commands:elink., :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=247.CharCaseUp
:lm margin=1.:i1.CharCaseUp
:p.Convert current character to uppercase 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=245.Character Translation:elink..
.br

:h3 id=248.CharCaseDown
:lm margin=1.:i1.CharCaseDown
:p.Convert current character to lowercase 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=245.Character Translation:elink..
.br

:h3 id=249.CharCaseToggle
:lm margin=1.:i1.CharCaseToggle
:p.Toggle case of current character 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=245.Character Translation:elink..
.br

:h3 id=250.CharTrans
:lm margin=1.:i1.CharTrans
:p.Translate current character (like perl/sed) 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=245.Character Translation:elink..
.br

:h3 id=251.LineCaseUp
:lm margin=1.:i1.LineCaseUp
:p.Convert current line to uppercase 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=245.Character Translation:elink..
.br

:h3 id=252.LineCaseDown
:lm margin=1.:i1.LineCaseDown
:p.Convert current line to lowercase 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=245.Character Translation:elink..
.br

:h3 id=253.LineCaseToggle
:lm margin=1.:i1.LineCaseToggle
:p.Toggle case of current line 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=245.Character Translation:elink..
.br

:h3 id=254.LineTrans
:lm margin=1.:i1.LineTrans
:p.Translate characters on current line 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=245.Character Translation:elink..
.br

:h3 id=255.BlockCaseUp
:lm margin=1.:i1.BlockCaseUp
:p.Convert characters in selected block to uppercase 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=245.Character Translation:elink..
.br

:h3 id=256.BlockCaseDown
:lm margin=1.:i1.BlockCaseDown
:p.Convert characters in selected block to lowercase 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=245.Character Translation:elink..
.br

:h3 id=257.BlockCaseToggle
:lm margin=1.:i1.BlockCaseToggle
:p.Toggle case of characters in selected block 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=245.Character Translation:elink..
.br

:h3 id=258.BlockTrans
:lm margin=1.:i1.BlockTrans
:p.Translate characters in selected block. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=245.Character Translation:elink..
.br

:h3 id=259.InsertString
:lm margin=1.:i1.InsertString
:p.Insert argument string at cursor position 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=245.Character Translation:elink..
.br

:h3 id=260.InsertSpace
:lm margin=1.:i1.InsertSpace
:p.Insert space 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=245.Character Translation:elink..
.br

:h3 id=261.InsertChar
:lm margin=1.:i1.InsertChar
:p.Insert character argument at cursor position 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=245.Character Translation:elink..
.br

:h3 id=262.TypeChar
:lm margin=1.:i1.TypeChar
:p.Insert character at cursor position (expanding abbreviations) 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=245.Character Translation:elink..
.br

:h3 id=263.InsertTab
:lm margin=1.:i1.InsertTab
:p.Insert tab character at cursor position 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=245.Character Translation:elink..
.br

:h3 id=264.InsertSpacesToTab
:lm margin=1.:i1.InsertSpacesToTab
:p.Insert appropriate number of spaces to simulate a tab. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=245.Character Translation:elink..
.br

:h3 id=265.SelfInsert
:lm margin=1.:i1.SelfInsert
:p.Insert typed character 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=245.Character Translation:elink..
.br

:h3 id=266.WrapPara
:lm margin=1.:i1.WrapPara
:p.Wrap current paragraph 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=245.Character Translation:elink..
.br

:h3 id=267.InsPrevLineChar
:lm margin=1.:i1.InsPrevLineChar
:p.Insert character in previous line above cursor 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=245.Character Translation:elink..
.br

:h3 id=268.InsPrevLineToEol
:lm margin=1.:i1.InsPrevLineToEol
:p.Insert previous line from cursor to end of line 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=245.Character Translation:elink..
.br

:h3 id=269.CompleteWord
:lm margin=1.:i1.CompleteWord
:p.Complete current word to last word starting with the same prefix. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=245.Character Translation:elink..
.br

:h3 id=270.FilePrev
:lm margin=1.:i1.FilePrev
:p.Switch to previous file in ring. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=245.Character Translation:elink..
.br

:h3 id=271.FileNext
:lm margin=1.:i1.FileNext
:p.Switch to next file in ring. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=245.Character Translation:elink..
.br

:h3 id=272.FileLast
:lm margin=1.:i1.FileLast
:p.Exchange last two files in ring. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=245.Character Translation:elink..
.br

:h3 id=273.SwitchTo
:lm margin=1.:i1.SwitchTo
:p.Switch to numbered buffer given as argument 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=245.Character Translation:elink..
.br

:h2 id=274.File Commands
:lm margin=1.:i1.File Commands
:p.:ul compact. 
:li.:link reftype=hd refid=274.FileOpen:elink. 
:li.:link reftype=hd refid=275.FileOpenInMode:elink. 
:li.:link reftype=hd refid=276.FileReload:elink. 
:li.:link reftype=hd refid=277.FileSave:elink. 
:li.:link reftype=hd refid=278.FileSaveAll:elink. 
:li.:link reftype=hd refid=279.FileSaveAs:elink. 
:li.:link reftype=hd refid=280.FileWriteTo:elink. 
:li.:link reftype=hd refid=281.FilePrint:elink. 
:li.:link reftype=hd refid=282.FileClose:elink. 
:li.:link reftype=hd refid=283.FileCloseAll:elink. 
:li.:link reftype=hd refid=284.FileTrim:elink. :eul.
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink., :link reftype=hd refid=157.Deleting Text:elink., :link reftype=hd refid=172.Line Commands:elink., :link reftype=hd refid=182.Block Commands:elink., :link reftype=hd refid=219.Text Editing and Insertion:elink., :link reftype=hd refid=222.Folding Text:elink., :link reftype=hd refid=236.Bookmarks:elink., :link reftype=hd refid=245.Character Translation:elink., :link reftype=hd refid=273.File Commands:elink., :link reftype=hd refid=285.Directory Commands:elink., :link reftype=hd refid=294.Search and Replace:elink., :link reftype=hd refid=306.Window Commands:elink., :link reftype=hd refid=317.Compiler Support:elink., :link reftype=hd refid=324.CVS Support:elink., :link reftype=hd refid=335.TAGS Commands:elink., :link reftype=hd refid=344.Option commands:elink., :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=275.FileOpen
:lm margin=1.:i1.FileOpen
:p.Open file 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=273.File Commands:elink..
.br

:h3 id=276.FileOpenInMode
:lm margin=1.:i1.FileOpenInMode
:p.Open file in specified mode 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=273.File Commands:elink..
.br

:h3 id=277.FileReload
:lm margin=1.:i1.FileReload
:p.Reload current file 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=273.File Commands:elink..
.br

:h3 id=278.FileSave
:lm margin=1.:i1.FileSave
:p.Save current file 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=273.File Commands:elink..
.br

:h3 id=279.FileSaveAll
:lm margin=1.:i1.FileSaveAll
:p.Save all modified files 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=273.File Commands:elink..
.br

:h3 id=280.FileSaveAs
:lm margin=1.:i1.FileSaveAs
:p.Rename Save current file 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=273.File Commands:elink..
.br

:h3 id=281.FileWriteTo
:lm margin=1.:i1.FileWriteTo
:p.Write current file into another file 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=273.File Commands:elink..
.br

:h3 id=282.FilePrint
:lm margin=1.:i1.FilePrint
:p.Print current file 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=273.File Commands:elink..
.br

:h3 id=283.FileClose
:lm margin=1.:i1.FileClose
:p.Close current file 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=273.File Commands:elink..
.br

:h3 id=284.FileCloseAll
:lm margin=1.:i1.FileCloseAll
:p.Close all open files 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=273.File Commands:elink..
.br

:h3 id=285.FileTrim
:lm margin=1.:i1.FileTrim
:p.Trim end-of-line whitespace 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=273.File Commands:elink..
.br

:h2 id=286.Directory Commands
:lm margin=1.:i1.Directory Commands
:p.:ul compact. 
:li.:link reftype=hd refid=286.DirOpen:elink. 
:li.:link reftype=hd refid=287.DirGoUp:elink. 
:li.:link reftype=hd refid=288.DirGoDown:elink. 
:li.:link reftype=hd refid=289.DirGoRoot:elink. 
:li.:link reftype=hd refid=290.DirGoto:elink. 
:li.:link reftype=hd refid=291.DirSearchCancel:elink. 
:li.:link reftype=hd refid=292.DirSearchNext:elink. 
:li.:link reftype=hd refid=293.DirSearchPrev:elink. :eul.
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink., :link reftype=hd refid=157.Deleting Text:elink., :link reftype=hd refid=172.Line Commands:elink., :link reftype=hd refid=182.Block Commands:elink., :link reftype=hd refid=219.Text Editing and Insertion:elink., :link reftype=hd refid=222.Folding Text:elink., :link reftype=hd refid=236.Bookmarks:elink., :link reftype=hd refid=245.Character Translation:elink., :link reftype=hd refid=273.File Commands:elink., :link reftype=hd refid=285.Directory Commands:elink., :link reftype=hd refid=294.Search and Replace:elink., :link reftype=hd refid=306.Window Commands:elink., :link reftype=hd refid=317.Compiler Support:elink., :link reftype=hd refid=324.CVS Support:elink., :link reftype=hd refid=335.TAGS Commands:elink., :link reftype=hd refid=344.Option commands:elink., :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=287.DirOpen
:lm margin=1.:i1.DirOpen
:p.Open directory browser 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=285.Directory Commands:elink..
.br

:h3 id=288.DirGoUp
:lm margin=1.:i1.DirGoUp
:p.Change to parent directory 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=285.Directory Commands:elink..
.br

:h3 id=289.DirGoDown
:lm margin=1.:i1.DirGoDown
:p.Change to currently selected directory 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=285.Directory Commands:elink..
.br

:h3 id=290.DirGoRoot
:lm margin=1.:i1.DirGoRoot
:p.Change to root directory 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=285.Directory Commands:elink..
.br

:h3 id=291.DirGoto
:lm margin=1.:i1.DirGoto
:p.Change to directory given as argument 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=285.Directory Commands:elink..
.br

:h3 id=292.DirSearchCancel
:lm margin=1.:i1.DirSearchCancel
:p.Cancel search 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=285.Directory Commands:elink..
.br

:h3 id=293.DirSearchNext
:lm margin=1.:i1.DirSearchNext
:p.Find next matching file 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=285.Directory Commands:elink..
.br

:h3 id=294.DirSearchPrev
:lm margin=1.:i1.DirSearchPrev
:p.Find previous matching file 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=285.Directory Commands:elink..
.br

:h2 id=295.Search and Replace
:lm margin=1.:i1.Search and Replace
:p.:ul compact. 
:li.:link reftype=hd refid=295.IncrementalSearch:elink. 
:li.:link reftype=hd refid=296.Find:elink. 
:li.:link reftype=hd refid=297.FindReplace:elink. 
:li.:link reftype=hd refid=298.FindRepeat:elink. 
:li.:link reftype=hd refid=299.FindRepeatOnce:elink. 
:li.:link reftype=hd refid=300.FindRepeatReverse:elink. 
:li.:link reftype=hd refid=301.MatchBracket:elink. 
:li.:link reftype=hd refid=302.HilitWord:elink. 
:li.:link reftype=hd refid=303.SearchWordPrev:elink. 
:li.:link reftype=hd refid=304.SearchWordNext:elink. 
:li.:link reftype=hd refid=305.HilitMatchBracket:elink. :eul.
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink., :link reftype=hd refid=157.Deleting Text:elink., :link reftype=hd refid=172.Line Commands:elink., :link reftype=hd refid=182.Block Commands:elink., :link reftype=hd refid=219.Text Editing and Insertion:elink., :link reftype=hd refid=222.Folding Text:elink., :link reftype=hd refid=236.Bookmarks:elink., :link reftype=hd refid=245.Character Translation:elink., :link reftype=hd refid=273.File Commands:elink., :link reftype=hd refid=285.Directory Commands:elink., :link reftype=hd refid=294.Search and Replace:elink., :link reftype=hd refid=306.Window Commands:elink., :link reftype=hd refid=317.Compiler Support:elink., :link reftype=hd refid=324.CVS Support:elink., :link reftype=hd refid=335.TAGS Commands:elink., :link reftype=hd refid=344.Option commands:elink., :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=296.IncrementalSearch
:lm margin=1.:i1.IncrementalSearch
:p.Incremental search 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=294.Search and Replace:elink..
.br

:h3 id=297.Find
:lm margin=1.:i1.Find
:p.Find 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=294.Search and Replace:elink..
.br

:h3 id=298.FindReplace
:lm margin=1.:i1.FindReplace
:p.Find and replace 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=294.Search and Replace:elink..
.br

:h3 id=299.FindRepeat
:lm margin=1.:i1.FindRepeat
:p.Repeat last find/replace operation 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=294.Search and Replace:elink..
.br

:h3 id=300.FindRepeatOnce
:lm margin=1.:i1.FindRepeatOnce
:p.Repeat last find/replace operation only once 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=294.Search and Replace:elink..
.br

:h3 id=301.FindRepeatReverse
:lm margin=1.:i1.FindRepeatReverse
:p.Repeat last find/replace operation in reverse 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=294.Search and Replace:elink..
.br

:h3 id=302.MatchBracket
:lm margin=1.:i1.MatchBracket
:p.Find matching bracket ([{<>}]) 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=294.Search and Replace:elink..
.br

:h3 id=303.HilitWord
:lm margin=1.:i1.HilitWord
:p.Highlight current word everywhere in the file 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=294.Search and Replace:elink..
.br

:h3 id=304.SearchWordPrev
:lm margin=1.:i1.SearchWordPrev
:p.Search for previous occurence of word under cursor 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=294.Search and Replace:elink..
.br

:h3 id=305.SearchWordNext
:lm margin=1.:i1.SearchWordNext
:p.Search for next occurence of word under cursor 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=294.Search and Replace:elink..
.br

:h3 id=306.HilitMatchBracket
:lm margin=1.:i1.HilitMatchBracket
:p.Highlight matching bracket 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=294.Search and Replace:elink..
.br

:h2 id=307.Window Commands
:lm margin=1.:i1.Window Commands
:p.:ul compact. 
:li.:link reftype=hd refid=307.WinHSplit:elink. 
:li.:link reftype=hd refid=308.WinNext:elink. 
:li.:link reftype=hd refid=309.WinPrev:elink. 
:li.:link reftype=hd refid=310.WinClose:elink. 
:li.:link reftype=hd refid=311.WinZoom:elink. 
:li.:link reftype=hd refid=312.WinResize:elink. 
:li.:link reftype=hd refid=313.ViewBuffers:elink. 
:li.:link reftype=hd refid=314.ListRoutines:elink. 
:li.:link reftype=hd refid=315.ExitEditor:elink. 
:li.:link reftype=hd refid=316.ShowEntryScreen:elink. :eul.
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink., :link reftype=hd refid=157.Deleting Text:elink., :link reftype=hd refid=172.Line Commands:elink., :link reftype=hd refid=182.Block Commands:elink., :link reftype=hd refid=219.Text Editing and Insertion:elink., :link reftype=hd refid=222.Folding Text:elink., :link reftype=hd refid=236.Bookmarks:elink., :link reftype=hd refid=245.Character Translation:elink., :link reftype=hd refid=273.File Commands:elink., :link reftype=hd refid=285.Directory Commands:elink., :link reftype=hd refid=294.Search and Replace:elink., :link reftype=hd refid=306.Window Commands:elink., :link reftype=hd refid=317.Compiler Support:elink., :link reftype=hd refid=324.CVS Support:elink., :link reftype=hd refid=335.TAGS Commands:elink., :link reftype=hd refid=344.Option commands:elink., :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=308.WinHSplit
:lm margin=1.:i1.WinHSplit
:p.Split window horizontally 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=306.Window Commands:elink..
.br

:h3 id=309.WinNext
:lm margin=1.:i1.WinNext
:p.Switch to next (bottom) window 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=306.Window Commands:elink..
.br

:h3 id=310.WinPrev
:lm margin=1.:i1.WinPrev
:p.Switcn to previous (top) window. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=306.Window Commands:elink..
.br

:h3 id=311.WinClose
:lm margin=1.:i1.WinClose
:p.Close current window 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=306.Window Commands:elink..
.br

:h3 id=312.WinZoom
:lm margin=1.:i1.WinZoom
:p.Delete all windows except for current one 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=306.Window Commands:elink..
.br

:h3 id=313.WinResize
:lm margin=1.:i1.WinResize
:p.Resize current window (+n,-n given as argument) 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=306.Window Commands:elink..
.br

:h3 id=314.ViewBuffers
:lm margin=1.:i1.ViewBuffers
:p.View currently open buffers 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=306.Window Commands:elink..
.br

:h3 id=315.ListRoutines
:lm margin=1.:i1.ListRoutines
:p.Display routines in current source file 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=306.Window Commands:elink..
.br

:h3 id=316.ExitEditor
:lm margin=1.:i1.ExitEditor
:p.Exit FTE. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=306.Window Commands:elink..
.br

:h3 id=317.ShowEntryScreen
:lm margin=1.:i1.ShowEntryScreen
:p.View external program output if available 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=306.Window Commands:elink..
.br

:h2 id=318.Compiler Support
:lm margin=1.:i1.Compiler Support
:p.:ul compact. 
:li.:link reftype=hd refid=318.Compile:elink. 
:li.:link reftype=hd refid=319.RunCompiler:elink. 
:li.:link reftype=hd refid=320.ViewMessages:elink. 
:li.:link reftype=hd refid=321.CompileNextError:elink. 
:li.:link reftype=hd refid=322.CompilePrevError:elink. 
:li.:link reftype=hd refid=323.RunProgram:elink. :eul.
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink., :link reftype=hd refid=157.Deleting Text:elink., :link reftype=hd refid=172.Line Commands:elink., :link reftype=hd refid=182.Block Commands:elink., :link reftype=hd refid=219.Text Editing and Insertion:elink., :link reftype=hd refid=222.Folding Text:elink., :link reftype=hd refid=236.Bookmarks:elink., :link reftype=hd refid=245.Character Translation:elink., :link reftype=hd refid=273.File Commands:elink., :link reftype=hd refid=285.Directory Commands:elink., :link reftype=hd refid=294.Search and Replace:elink., :link reftype=hd refid=306.Window Commands:elink., :link reftype=hd refid=317.Compiler Support:elink., :link reftype=hd refid=324.CVS Support:elink., :link reftype=hd refid=335.TAGS Commands:elink., :link reftype=hd refid=344.Option commands:elink., :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=319.Compile
:lm margin=1.:i1.Compile
:p.Ask for compile command and run compiler 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=317.Compiler Support:elink..
.br

:h3 id=320.RunCompiler
:lm margin=1.:i1.RunCompiler
:p.Run configured compile command 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=317.Compiler Support:elink..
.br

:h3 id=321.ViewMessages
:lm margin=1.:i1.ViewMessages
:p.View compiler output 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=317.Compiler Support:elink..
.br

:h3 id=322.CompileNextError
:lm margin=1.:i1.CompileNextError
:p.Switch to next compiler error 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=317.Compiler Support:elink..
.br

:h3 id=323.CompilePrevError
:lm margin=1.:i1.CompilePrevError
:p.Switch to previous compiler error 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=317.Compiler Support:elink..
.br

:h3 id=324.RunProgram
:lm margin=1.:i1.RunProgram
:p.Run external program 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=317.Compiler Support:elink..
.br

:h2 id=325.CVS Support
:lm margin=1.:i1.CVS Support
:p.:ul compact. 
:li.:link reftype=hd refid=325.Cvs:elink. 
:li.:link reftype=hd refid=326.RunCvs:elink. 
:li.:link reftype=hd refid=327.ViewCvs:elink. 
:li.:link reftype=hd refid=328.ClearCvsMessages:elink. 
:li.:link reftype=hd refid=329.CvsDiff:elink. 
:li.:link reftype=hd refid=330.RunCvsDiff:elink. 
:li.:link reftype=hd refid=331.ViewCvsDiff:elink. 
:li.:link reftype=hd refid=332.CvsCommit:elink. 
:li.:link reftype=hd refid=333.RunCvsCommit:elink. 
:li.:link reftype=hd refid=334.ViewCvsLog:elink. :eul.
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink., :link reftype=hd refid=157.Deleting Text:elink., :link reftype=hd refid=172.Line Commands:elink., :link reftype=hd refid=182.Block Commands:elink., :link reftype=hd refid=219.Text Editing and Insertion:elink., :link reftype=hd refid=222.Folding Text:elink., :link reftype=hd refid=236.Bookmarks:elink., :link reftype=hd refid=245.Character Translation:elink., :link reftype=hd refid=273.File Commands:elink., :link reftype=hd refid=285.Directory Commands:elink., :link reftype=hd refid=294.Search and Replace:elink., :link reftype=hd refid=306.Window Commands:elink., :link reftype=hd refid=317.Compiler Support:elink., :link reftype=hd refid=324.CVS Support:elink., :link reftype=hd refid=335.TAGS Commands:elink., :link reftype=hd refid=344.Option commands:elink., :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=326.Cvs
:lm margin=1.:i1.Cvs
:p.Ask for CVS options and run CVS 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=324.CVS Support:elink..
.br

:h3 id=327.RunCvs
:lm margin=1.:i1.RunCvs
:p.Run configured CVS command 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=324.CVS Support:elink..
.br

:h3 id=328.ViewCvs
:lm margin=1.:i1.ViewCvs
:p.View CVS output 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=324.CVS Support:elink..
.br

:h3 id=329.ClearCvsMessages
:lm margin=1.:i1.ClearCvsMessages
:p.Clear CVS messages 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=324.CVS Support:elink..
.br

:h3 id=330.CvsDiff
:lm margin=1.:i1.CvsDiff
:p.Ask for CVS diff options and run CVS 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=324.CVS Support:elink..
.br

:h3 id=331.RunCvsDiff
:lm margin=1.:i1.RunCvsDiff
:p.Run configured CVS diff command 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=324.CVS Support:elink..
.br

:h3 id=332.ViewCvsDiff
:lm margin=1.:i1.ViewCvsDiff
:p.View CVS diff output 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=324.CVS Support:elink..
.br

:h3 id=333.CvsCommit
:lm margin=1.:i1.CvsCommit
:p.Ask for CVS commit options and run CVS 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=324.CVS Support:elink..
.br

:h3 id=334.RunCvsCommit
:lm margin=1.:i1.RunCvsCommit
:p.Run configured CVS commit command 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=324.CVS Support:elink..
.br

:h3 id=335.ViewCvsLog
:lm margin=1.:i1.ViewCvsLog
:p.View CVS log 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=324.CVS Support:elink..
.br

:h2 id=336.TAGS Commands
:lm margin=1.:i1.TAGS Commands
:p.:ul compact. 
:li.:link reftype=hd refid=336.TagFind:elink. 
:li.:link reftype=hd refid=337.TagFindWord:elink. 
:li.:link reftype=hd refid=338.TagNext:elink. 
:li.:link reftype=hd refid=339.TagPrev:elink. 
:li.:link reftype=hd refid=340.TagPop:elink. 
:li.:link reftype=hd refid=341.TagLoad:elink. 
:li.:link reftype=hd refid=342.TagClear:elink. 
:li.:link reftype=hd refid=343.TagGoto:elink. :eul.fte supports TAGS files generated by programs like ctags. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink., :link reftype=hd refid=157.Deleting Text:elink., :link reftype=hd refid=172.Line Commands:elink., :link reftype=hd refid=182.Block Commands:elink., :link reftype=hd refid=219.Text Editing and Insertion:elink., :link reftype=hd refid=222.Folding Text:elink., :link reftype=hd refid=236.Bookmarks:elink., :link reftype=hd refid=245.Character Translation:elink., :link reftype=hd refid=273.File Commands:elink., :link reftype=hd refid=285.Directory Commands:elink., :link reftype=hd refid=294.Search and Replace:elink., :link reftype=hd refid=306.Window Commands:elink., :link reftype=hd refid=317.Compiler Support:elink., :link reftype=hd refid=324.CVS Support:elink., :link reftype=hd refid=335.TAGS Commands:elink., :link reftype=hd refid=344.Option commands:elink., :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=337.TagFind
:lm margin=1.:i1.TagFind
:p.Find word argumen in tag files. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=335.TAGS Commands:elink..
.br

:h3 id=338.TagFindWord
:lm margin=1.:i1.TagFindWord
:p.Find word under cursor in tag files. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=335.TAGS Commands:elink..
.br

:h3 id=339.TagNext
:lm margin=1.:i1.TagNext
:p.Switch to next occurance of tag 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=335.TAGS Commands:elink..
.br

:h3 id=340.TagPrev
:lm margin=1.:i1.TagPrev
:p.Switch to previous occurance of tag 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=335.TAGS Commands:elink..
.br

:h3 id=341.TagPop
:lm margin=1.:i1.TagPop
:p.Pop saved position from tag stack 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=335.TAGS Commands:elink..
.br

:h3 id=342.TagLoad
:lm margin=1.:i1.TagLoad
:p.Load tag file and merge with current tags 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=335.TAGS Commands:elink..
.br

:h3 id=343.TagClear
:lm margin=1.:i1.TagClear
:p.Clear loaded tags 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=335.TAGS Commands:elink..
.br

:h3 id=344.TagGoto
:lm margin=1.:i1.TagGoto
:p.
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=335.TAGS Commands:elink..
.br

:h2 id=345.Option commands
:lm margin=1.:i1.Option commands
:p.:ul compact. 
:li.:link reftype=hd refid=345.ToggleAutoIndent:elink. 
:li.:link reftype=hd refid=346.ToggleInsert:elink. 
:li.:link reftype=hd refid=347.ToggleExpandTabs:elink. 
:li.:link reftype=hd refid=348.ToggleShowTabs:elink. 
:li.:link reftype=hd refid=349.ToggleUndo:elink. 
:li.:link reftype=hd refid=350.ToggleReadOnly:elink. 
:li.:link reftype=hd refid=351.ToggleKeepBackups:elink. 
:li.:link reftype=hd refid=352.ToggleMatchCase:elink. 
:li.:link reftype=hd refid=353.ToggleBackSpKillTab:elink. 
:li.:link reftype=hd refid=354.ToggleDeleteKillTab:elink. 
:li.:link reftype=hd refid=355.ToggleSpaceTabs:elink. 
:li.:link reftype=hd refid=356.ToggleIndentWithTabs:elink. 
:li.:link reftype=hd refid=357.ToggleBackSpUnindents:elink. 
:li.:link reftype=hd refid=358.ToggleWordWrap:elink. 
:li.:link reftype=hd refid=359.ToggleTrim:elink. 
:li.:link reftype=hd refid=360.ToggleShowMarkers:elink. 
:li.:link reftype=hd refid=361.ToggleHilitTags:elink. 
:li.:link reftype=hd refid=362.ToggleShowBookmarks:elink. 
:li.:link reftype=hd refid=363.ToggleMakeBackups:elink. 
:li.:link reftype=hd refid=364.SetLeftMargin:elink. 
:li.:link reftype=hd refid=365.SetRightMargin:elink. 
:li.:link reftype=hd refid=366.ToggleSysClipboard:elink. 
:li.:link reftype=hd refid=367.SetPrintDevice:elink. 
:li.:link reftype=hd refid=368.ChangeTabSize:elink. 
:li.:link reftype=hd refid=369.ChangeLeftMargin:elink. 
:li.:link reftype=hd refid=370.ChangeRightMargin:elink. :eul.
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink., :link reftype=hd refid=157.Deleting Text:elink., :link reftype=hd refid=172.Line Commands:elink., :link reftype=hd refid=182.Block Commands:elink., :link reftype=hd refid=219.Text Editing and Insertion:elink., :link reftype=hd refid=222.Folding Text:elink., :link reftype=hd refid=236.Bookmarks:elink., :link reftype=hd refid=245.Character Translation:elink., :link reftype=hd refid=273.File Commands:elink., :link reftype=hd refid=285.Directory Commands:elink., :link reftype=hd refid=294.Search and Replace:elink., :link reftype=hd refid=306.Window Commands:elink., :link reftype=hd refid=317.Compiler Support:elink., :link reftype=hd refid=324.CVS Support:elink., :link reftype=hd refid=335.TAGS Commands:elink., :link reftype=hd refid=344.Option commands:elink., :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=346.ToggleAutoIndent
:lm margin=1.:i1.ToggleAutoIndent
:p.
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=344.Option commands:elink..
.br

:h3 id=347.ToggleInsert
:lm margin=1.:i1.ToggleInsert
:p.
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=344.Option commands:elink..
.br

:h3 id=348.ToggleExpandTabs
:lm margin=1.:i1.ToggleExpandTabs
:p.
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=344.Option commands:elink..
.br

:h3 id=349.ToggleShowTabs
:lm margin=1.:i1.ToggleShowTabs
:p.
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=344.Option commands:elink..
.br

:h3 id=350.ToggleUndo
:lm margin=1.:i1.ToggleUndo
:p.
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=344.Option commands:elink..
.br

:h3 id=351.ToggleReadOnly
:lm margin=1.:i1.ToggleReadOnly
:p.
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=344.Option commands:elink..
.br

:h3 id=352.ToggleKeepBackups
:lm margin=1.:i1.ToggleKeepBackups
:p.
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=344.Option commands:elink..
.br

:h3 id=353.ToggleMatchCase
:lm margin=1.:i1.ToggleMatchCase
:p.
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=344.Option commands:elink..
.br

:h3 id=354.ToggleBackSpKillTab
:lm margin=1.:i1.ToggleBackSpKillTab
:p.
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=344.Option commands:elink..
.br

:h3 id=355.ToggleDeleteKillTab
:lm margin=1.:i1.ToggleDeleteKillTab
:p.
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=344.Option commands:elink..
.br

:h3 id=356.ToggleSpaceTabs
:lm margin=1.:i1.ToggleSpaceTabs
:p.
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=344.Option commands:elink..
.br

:h3 id=357.ToggleIndentWithTabs
:lm margin=1.:i1.ToggleIndentWithTabs
:p.
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=344.Option commands:elink..
.br

:h3 id=358.ToggleBackSpUnindents
:lm margin=1.:i1.ToggleBackSpUnindents
:p.
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=344.Option commands:elink..
.br

:h3 id=359.ToggleWordWrap
:lm margin=1.:i1.ToggleWordWrap
:p.
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=344.Option commands:elink..
.br

:h3 id=360.ToggleTrim
:lm margin=1.:i1.ToggleTrim
:p.
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=344.Option commands:elink..
.br

:h3 id=361.ToggleShowMarkers
:lm margin=1.:i1.ToggleShowMarkers
:p.
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=344.Option commands:elink..
.br

:h3 id=362.ToggleHilitTags
:lm margin=1.:i1.ToggleHilitTags
:p.
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=344.Option commands:elink..
.br

:h3 id=363.ToggleShowBookmarks
:lm margin=1.:i1.ToggleShowBookmarks
:p.
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=344.Option commands:elink..
.br

:h3 id=364.ToggleMakeBackups
:lm margin=1.:i1.ToggleMakeBackups
:p.
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=344.Option commands:elink..
.br

:h3 id=365.SetLeftMargin
:lm margin=1.:i1.SetLeftMargin
:p.
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=344.Option commands:elink..
.br

:h3 id=366.SetRightMargin
:lm margin=1.:i1.SetRightMargin
:p.
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=344.Option commands:elink..
.br

:h3 id=367.ToggleSysClipboard
:lm margin=1.:i1.ToggleSysClipboard
:p.
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=344.Option commands:elink..
.br

:h3 id=368.SetPrintDevice
:lm margin=1.:i1.SetPrintDevice
:p.
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=344.Option commands:elink..
.br

:h3 id=369.ChangeTabSize
:lm margin=1.:i1.ChangeTabSize
:p.
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=344.Option commands:elink..
.br

:h3 id=370.ChangeLeftMargin
:lm margin=1.:i1.ChangeLeftMargin
:p.
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=344.Option commands:elink..
.br

:h3 id=371.ChangeRightMargin
:lm margin=1.:i1.ChangeRightMargin
:p.
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=344.Option commands:elink..
.br

:h2 id=372.Other commands
:lm margin=1.:i1.Other commands
:p.:ul compact. 
:li.:link reftype=hd refid=372.ShowPosition:elink. 
:li.:link reftype=hd refid=373.ShowVersion:elink. 
:li.:link reftype=hd refid=374.ShowKey:elink. 
:li.:link reftype=hd refid=375.WinRefresh:elink. 
:li.:link reftype=hd refid=376.MainMenu:elink. 
:li.:link reftype=hd refid=377.ShowMenu:elink. 
:li.:link reftype=hd refid=378.LocalMenu:elink. 
:li.:link reftype=hd refid=379.ChangeMode:elink. 
:li.:link reftype=hd refid=380.ChangeKeys:elink. 
:li.:link reftype=hd refid=381.ChangeFlags:elink. 
:li.:link reftype=hd refid=382.Cancel:elink. 
:li.:link reftype=hd refid=383.Activate:elink. 
:li.:link reftype=hd refid=384.Rescan:elink. 
:li.:link reftype=hd refid=385.CloseActivate:elink. 
:li.:link reftype=hd refid=386.ActivateInOtherWindow:elink. 
:li.:link reftype=hd refid=387.DeleteFile:elink. 
:li.:link reftype=hd refid=388.ASCIITable:elink. 
:li.:link reftype=hd refid=389.DesktopSave:elink. 
:li.:link reftype=hd refid=390.ClipClear:elink. 
:li.:link reftype=hd refid=391.DesktopSaveAs:elink. 
:li.:link reftype=hd refid=392.ChildClose:elink. 
:li.:link reftype=hd refid=393.BufListFileSave:elink. 
:li.:link reftype=hd refid=394.BufListFileClose:elink. 
:li.:link reftype=hd refid=395.BufListSearchCancel:elink. 
:li.:link reftype=hd refid=396.BufListSearchNext:elink. 
:li.:link reftype=hd refid=397.BufListSearchPrev:elink. 
:li.:link reftype=hd refid=398.ViewModeMap:elink. 
:li.:link reftype=hd refid=399.ClearMessages:elink. 
:li.:link reftype=hd refid=400.IndentFunction:elink. 
:li.:link reftype=hd refid=401.MoveFunctionPrev:elink. 
:li.:link reftype=hd refid=402.MoveFunctionNext:elink. 
:li.:link reftype=hd refid=403.InsertDate:elink. 
:li.:link reftype=hd refid=404.InsertUid:elink. 
:li.:link reftype=hd refid=405.FrameNew:elink. 
:li.:link reftype=hd refid=406.FrameClose:elink. 
:li.:link reftype=hd refid=407.FrameNext:elink. 
:li.:link reftype=hd refid=408.FramePrev:elink. 
:li.:link reftype=hd refid=409.BufferViewNext:elink. 
:li.:link reftype=hd refid=410.BufferViewPrev:elink. 
:li.:link reftype=hd refid=411.ShowHelpWord:elink. 
:li.:link reftype=hd refid=412.ShowHelp:elink. 
:li.:link reftype=hd refid=413.ConfigRecompile:elink. 
:li.:link reftype=hd refid=414.SetCIndentStyle:elink. 
:li.:link reftype=hd refid=415.SetIndentWithTabs:elink. 
:li.:link reftype=hd refid=416.ListMark:elink. 
:li.:link reftype=hd refid=417.ListUnmark:elink. 
:li.:link reftype=hd refid=418.ListToggleMark:elink. 
:li.:link reftype=hd refid=419.ListMarkAll:elink. 
:li.:link reftype=hd refid=420.ListUnmarkAll:elink. 
:li.:link reftype=hd refid=421.ListToggleMarkAll:elink. :eul.
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=94.Cursor Movement:elink., :link reftype=hd refid=157.Deleting Text:elink., :link reftype=hd refid=172.Line Commands:elink., :link reftype=hd refid=182.Block Commands:elink., :link reftype=hd refid=219.Text Editing and Insertion:elink., :link reftype=hd refid=222.Folding Text:elink., :link reftype=hd refid=236.Bookmarks:elink., :link reftype=hd refid=245.Character Translation:elink., :link reftype=hd refid=273.File Commands:elink., :link reftype=hd refid=285.Directory Commands:elink., :link reftype=hd refid=294.Search and Replace:elink., :link reftype=hd refid=306.Window Commands:elink., :link reftype=hd refid=317.Compiler Support:elink., :link reftype=hd refid=324.CVS Support:elink., :link reftype=hd refid=335.TAGS Commands:elink., :link reftype=hd refid=344.Option commands:elink., :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=373.ShowPosition
:lm margin=1.:i1.ShowPosition
:p.Show internal position information on status line 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=374.ShowVersion
:lm margin=1.:i1.ShowVersion
:p.Show editor version information 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=375.ShowKey
:lm margin=1.:i1.ShowKey
:p.Wait for keypress and display modifiers+key pressed 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=376.WinRefresh
:lm margin=1.:i1.WinRefresh
:p.Refresh display 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=377.MainMenu
:lm margin=1.:i1.MainMenu
:p.Activate main menu 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=378.ShowMenu
:lm margin=1.:i1.ShowMenu
:p.Popup menu specified as argument 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=379.LocalMenu
:lm margin=1.:i1.LocalMenu
:p.Popup context menu 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=380.ChangeMode
:lm margin=1.:i1.ChangeMode
:p.Change active mode for current buffer 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=381.ChangeKeys
:lm margin=1.:i1.ChangeKeys
:p.Change keybindings for current buffer 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=382.ChangeFlags
:lm margin=1.:i1.ChangeFlags
:p.Change option flags for current buffer 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=383.Cancel
:lm margin=1.:i1.Cancel
:p.
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=384.Activate
:lm margin=1.:i1.Activate
:p.
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=385.Rescan
:lm margin=1.:i1.Rescan
:p.
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=386.CloseActivate
:lm margin=1.:i1.CloseActivate
:p.
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=387.ActivateInOtherWindow
:lm margin=1.:i1.ActivateInOtherWindow
:p.
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=388.DeleteFile
:lm margin=1.:i1.DeleteFile
:p.
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=389.ASCIITable
:lm margin=1.:i1.ASCIITable
:p.Display ASCII selector in status line. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=390.DesktopSave
:lm margin=1.:i1.DesktopSave
:p.Save desktop 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=391.ClipClear
:lm margin=1.:i1.ClipClear
:p.Clear clipboard 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=392.DesktopSaveAs
:lm margin=1.:i1.DesktopSaveAs
:p.Save desktop under a new name 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=393.ChildClose
:lm margin=1.:i1.ChildClose
:p.
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=394.BufListFileSave
:lm margin=1.:i1.BufListFileSave
:p.Save currently selected file in buffer list 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=395.BufListFileClose
:lm margin=1.:i1.BufListFileClose
:p.Close currently selected file in buffer list 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=396.BufListSearchCancel
:lm margin=1.:i1.BufListSearchCancel
:p.Cancel search 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=397.BufListSearchNext
:lm margin=1.:i1.BufListSearchNext
:p.Next match in search 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=398.BufListSearchPrev
:lm margin=1.:i1.BufListSearchPrev
:p.Previous match in search 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=399.ViewModeMap
:lm margin=1.:i1.ViewModeMap
:p.View current mode keybindings 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=400.ClearMessages
:lm margin=1.:i1.ClearMessages
:p.Clear compiler messages 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=401.IndentFunction
:lm margin=1.:i1.IndentFunction
:p.Indent current function 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=402.MoveFunctionPrev
:lm margin=1.:i1.MoveFunctionPrev
:p.Move cursor to previous function 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=403.MoveFunctionNext
:lm margin=1.:i1.MoveFunctionNext
:p.Move cursor to next function 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=404.InsertDate
:lm margin=1.:i1.InsertDate
:p.Insert date at cursor 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=405.InsertUid
:lm margin=1.:i1.InsertUid
:p.Insert user name at cursor 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=406.FrameNew
:lm margin=1.:i1.FrameNew
:p.
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=407.FrameClose
:lm margin=1.:i1.FrameClose
:p.
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=408.FrameNext
:lm margin=1.:i1.FrameNext
:p.
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=409.FramePrev
:lm margin=1.:i1.FramePrev
:p.
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=410.BufferViewNext
:lm margin=1.:i1.BufferViewNext
:p.
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=411.BufferViewPrev
:lm margin=1.:i1.BufferViewPrev
:p.
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=412.ShowHelpWord
:lm margin=1.:i1.ShowHelpWord
:p.Show context help on keyword. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=413.ShowHelp
:lm margin=1.:i1.ShowHelp
:p.Show help for FTE. 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=414.ConfigRecompile
:lm margin=1.:i1.ConfigRecompile
:p.Recompile editor configuration 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=415.SetCIndentStyle
:lm margin=1.:i1.SetCIndentStyle
:p.Set C indentation style parameters Has the following parameters&colon.
C_Indent = 4; C_BraceOfs = 0; C_ParenDelta = -1; C_CaseOfs = 0;
C_CaseDelta = 4; C_ClassOfs = 0; C_ClassDelta = 4; C_ColonOfs = -4;
C_CommentOfs = 0; C_CommentDelta = 1; C_FirstLevelWidth = -1;
C_FirstLevelIndent = 4; C_Continuation = 4; 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=416.SetIndentWithTabs
:lm margin=1.:i1.SetIndentWithTabs
:p.Set value of indent-with-tabs to argument 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=417.ListMark
:lm margin=1.:i1.ListMark
:p.Mark single line in list 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=418.ListUnmark
:lm margin=1.:i1.ListUnmark
:p.Unmark single line in list 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=419.ListToggleMark
:lm margin=1.:i1.ListToggleMark
:p.Toggle marking of single line in list 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=420.ListMarkAll
:lm margin=1.:i1.ListMarkAll
:p.Mark all lines in list 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=421.ListUnmarkAll
:lm margin=1.:i1.ListUnmarkAll
:p.Unmark all lines in list 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=371.Other commands:elink..
.br

:h3 id=422.ListToggleMarkAll
:lm margin=1.:i1.ListToggleMarkAll
:p.Toggle marking of all lines in list Delete content's of selection and
paste clipboard to current position 
:p.:hp2.SEE ALSO&colon.:ehp2. :link reftype=hd refid=371.Other commands:elink.. 
:h1 id=423.Regular Expressions
:lm margin=1.:i1.Regular Expressions
:p.Regular expressions are a way to specify text patterns when searching
for a text in a buffer. Regular expressions consist of normal
characters and special operator characters with a special meanings.
Operators allow you to anchor matches, match classes of characters,
match given pattern several times or match alternate patterns.
Operators can be also used to group patterns. 
:h2 id=424.Search/Match Operators
:lm margin=1.:i1.Search/Match Operators
:p.:dl compact tsize=10 break=all. 
:dt.:hp2.\:ehp2. 
:dd.Quotes the following character. If the following character is not
alphanumeric, it will lost it's special meaning, otherwise it will
gain a special meaning as described below. 
:dt.:hp2.\n:ehp2. 
:dd.Matches a 0x0A (LF) character. 
:dt.:hp2.\r:ehp2. 
:dd.Matches a 0x0D (CR) character. 
:dt.:hp2.\t:ehp2. 
:dd.Matches a 0x09 (TAB) character. 
:dt.:hp2.\e:ehp2. 
:dd.Matches an escape character (0x1B) 
:dt.:hp2.\s:ehp2. 
:dd.Matches whitespace (CR, LF, TAB, SPACE) characters. 
:dt.:hp2.\S:ehp2. 
:dd.Matches non-whitespace (the reverse of \s) 
:dt.:hp2.\w:ehp2. 
:dd.Matches word character [a-zA-Z0-9] 
:dt.:hp2.\W:ehp2. 
:dd.Matches non-word character 
:dt.:hp2.\d:ehp2. 
:dd.Matches a digit [0-9]. 
:dt.:hp2.\D:ehp2. 
:dd.Matches a non-digit. 
:dt.:hp2.\U:ehp2. 
:dd.Matches uppercase characters (A-Z) 
:dt.:hp2.\L:ehp2. 
:dd.Matches lowercase characters (a-z) 
:dt.:hp2.\x##:ehp2. 
:dd.Matches specified hex value (\x0A, \x0D, \x09, etc.) 
:dt.:hp2.\o###:ehp2. 
:dd.Matches specified octal value (\o000, \o015, etc.) 
:dt.:hp2.\N###:ehp2. 
:dd.Matches specified decimal value (\N000, \N013, \N009, etc.) 
:dt.:hp2.\C:ehp2. 
:dd.Starts case sensitive matching. 
:dt.:hp2.\c:ehp2. 
:dd.Starts case insensitive matching. 
:dt.:hp2.^:ehp2. 
:dd.Match a beginning of line. 
:dt.:hp2.$:ehp2. 
:dd.Match an end of line. 
:dt.:hp2..:ehp2. 
:dd.Match any character. 
:dt.:hp2.<:ehp2. 
:dd.Match beginning of word (word consists of [A-Za-z0-9]). 
:dt.:hp2.>:ehp2. 
:dd.Match end of word. 
:dt.:hp2.[ ]:ehp2. 
:dd.Specifies a class of characters ([abc123], [\]\x10], etc). 
:dt.:hp2.[ - ]:ehp2. 
:dd.Specified a range of characters ([0-9a-zA-Z_], [0-9], etc) 
:dt.:hp2.[^ ]:ehp2. 
:dd.Specifies complement class ([^a-z], [^\-], etc) 
:dt.:hp2.?:ehp2. 
:dd.Matches preceeding pattern optionally (a?bc, filename\.?, $?, etc) 
:dt.:hp2.|:ehp2. 
:dd.Matches preceeding or next pattern (a|b, c|d, abc|d). Only one
character will be used as pattern unless grouped together using {} or
(). 
:dt.:hp2.*:ehp2. 
:dd.Match zero or more occurances of preceeding pattern. Matching is
greedy and will match as much as possible. 
:dt.:hp2.+:ehp2. 
:dd.Match one or more occurances of preceeding pattern. Match is greedy. 
:dt.:hp2.@:ehp2. 
:dd.Match zero or more occurances of preceeding pattern. Matching is
non-greedy and will match as little as possible without causing the
rest of the pattern match to fail. 
:dt.:hp2.#:ehp2. 
:dd.Match one or more occurances of preceeding pattern. Matching is
non-greedy. 
:dt.:hp2.{ }:ehp2. 
:dd.Group patterns together to form complex pattern. ( {abc}, {abc}|{cde},
{abc}?, {word}?) 
:dt.:hp2.( ):ehp2. 
:dd.Group patterns together to form complex pattern. Also used to save the
matched substring into the register which can be used for substitution
operation. Up to 9 registers can be used. :edl.
:h2 id=425.Replacement Operators
:lm margin=1.:i1.Replacement Operators
:p.:dl compact tsize=10 break=all. 
:dt.:hp2.\:ehp2. 
:dd.Causes the next character to lose it's special meaning. 
:dt.:hp2.\n:ehp2. 
:dd.Inserts a 0x0A (LF) character. 
:dt.:hp2.\r:ehp2. 
:dd.Inserts a 0x0D (CR) character. 
:dt.:hp2.\t:ehp2. 
:dd.Inserts a 0x09 (TAB) character. 
:dt.:hp2.\1 to \9:ehp2. 
:dd.Recalls stored substrings from registers (\1, \2, \3, to \9). 
:dt.:hp2.\0:ehp2. 
:dd.Recalls entire matched pattern. 
:dt.:hp2.\u:ehp2. 
:dd.Convert next character to uppercase 
:dt.:hp2.\l:ehp2. 
:dd.Convert next character to lowercase 
:dt.:hp2.\U:ehp2. 
:dd.Convert to uppercase till \E or \e 
:dt.:hp2.\L:ehp2. 
:dd.Convert to lowercase till \E or \e :edl.
:h1 id=426.Status Line
:lm margin=1.:i1.Status Line
:p.
:p.Status line displays the following status information&colon. 
:p.:hp2.position|flags|mode|curchar|mod? filename|winno:ehp2. 
:p.:hp2.position:ehp2. = line&colon.column 
:p.:hp2.flags:ehp2. :dl compact tsize=10 break=all. 
:dt.I
:dd.Insert 
:dt.A
:dd.Autoindent 
:dt.C
:dd.Matches are case sensitive 
:dt.SLC
:dd.Stream, Line, Column block-mode 
:dt.wW
:dd.Automatic word wrap active (w = line, W = paragraph). :edl.
:p.:hp2.mode:ehp2. = Mode name as specified in configuration file 
:p.:hp2.curchar:ehp2. = Decimal ASCII code of character under cursor, or EOL/EOF 
:p.:hp2.mod?:ehp2. = :hp2.*:ehp2. if file was modified, :hp2.%:ehp2. if file is read-only 
:h1 id=427.Performance Tips
:lm margin=1.:i1.Performance Tips
:p.If you want to achieve top performance (necessary for some text
editing tasks), here are some tips&colon. :ul compact. 
:li.Use PLAIN hilit mode 
:li.Disable Tab Expansion 
:li.Disable ShowMarkers 
:li.Disable Undo 
:li.Disable AutoHilitBracket 
:li.Disable Abbreviations. :eul.
:h1 id=428.Configuration of Syntax Highlighting
:lm margin=1.:i1.Configuration of Syntax Highlighting
:p.Syntax&colon. :xmp.
    :hp2.colorize:ehp2. :hp1.Mode:ehp1.[:hp2.&colon.:ehp2.:hp1.Parent:ehp1.] :hp2.{:ehp2. :hp1.:link reftype=hd refid=428.Settings:elink.:ehp1. :hp2.}:ehp2.
:exmp.
:h2 id=429.Settings
:lm margin=1.:i1.Settings
:p.:ul compact. 
:li.SyntaxParser 
:p.Syntax&colon. :xmp.
    :hp2.SyntaxParser = ":ehp2.:hp1.Parser:ehp1.:hp2.";:ehp2.
:exmp.
:p.Activates the specified syntax parser for highlighting mode. Value of :hp2.:hp1.Parser:ehp1.:ehp2. can be chosen from&colon.
:p.:dl compact tsize=10 break=all. 
:dt.PLAIN
:dd.No syntax parser, only :link reftype=hd refid=429.keyword highlighting:elink. is available. 
:dt.SIMPLE
:dd.:link reftype=hd refid=429.User configurable syntax parser:elink. will be defined. 
:dt.C 
:dt.REXX 
:dt.HTML 
:dt.PERL 
:dt.MAKE 
:dt.DIFF
:dd.For viewing output of :hp2.diff:ehp2.. 
:dt.MERGE
:dd.For editing output of :hp2.rcsmerge:ehp2. (RCS, CVS). 
:dt.IPF 
:dt.Ada 
:dt.MSG
:dd.For editing E-Mail, 
:dt.SH 
:dt.PASCAL 
:dt.TEX 
:dt.FTE 
:dt.CATBS
:dd.For :hp2.VIEWING ONLY:ehp2. of :hp2.nroff:ehp2. formatted man-pages (formatted with backspaces). :edl.
:p.
:li.Keywords 
:p.Syntax&colon. :xmp.
    :hp2.keyword ":ehp2.:link reftype=hd refid=40.:hp1.color_specification:ehp1.:elink.:hp2." {
        ":ehp2.:hp1.keyword:ehp1.:hp2.":ehp2., ...
    :hp2.};:ehp2.
:exmp.Multiple keyword sets with different colors can be defined. 
:p.
:li.Colors 
:p.Syntax&colon. :xmp.
    :hp2.color {
        ":ehp2.:hp1.color_name:ehp1.:hp2.", ":ehp2.:link reftype=hd refid=40.:hp1.color_specification:ehp1.:elink.:hp2.":ehp2.
        ...
    :hp2.};:ehp2.
:exmp.
:p.The following color-names are available, which ones will actually be
used depends on the SyntaxParser setting used&colon.
:p.:ul compact. 
:li.TODO&colon. make color names dynamic at least for user defined
parsers. :eul.:eul.
:h2 id=430.Configurable Syntax Parser
:lm margin=1.:i1.Configurable Syntax Parser
:p.:hp2.This is not fully stabilized yet. Might change in the future.:ehp2. 
:p.When :hp2.SyntaxParser:ehp2. is set to "SIMPLE", the following commands can be used to configure
the state machine used for parsing the text. :dl compact tsize=10 break=all. 
:dt.:hp2.h_state:ehp2. 
:dd.Defines a new state for the state machine 
:p.:xmp.
:hp2.h_state:ehp2. :hp1.state_number:ehp1. :hp2.{:ehp2.
    :hp2.":ehp2.:link reftype=hd refid=429.:hp1.default_color_name:ehp1.:elink.:hp2.":ehp2.
:hp2.}:ehp2.
:exmp.:hp2.h_state:ehp2. command takes the following parameters&colon. 
:p.:dl compact tsize=10 break=all. 
:dt.:hp2.:hp1.state_number:ehp1.:ehp2. 
:dd.States must be numbered sequentially from 0 without skipping any
number. 
:dt.:hp2.:hp1.default_color_name:ehp1.:ehp2. 
:dd.Contains the name of default color used for characters that are not
matched by any transition string or keyword. :edl.
:p.
:dt.:hp2.h_wtype:ehp2. 
:dd.Specifies the keyword matching parameters for current state. There can
be only one :hp2.h_wtype:ehp2. keyword per state. :xmp.
:hp2.h_wtype {:ehp2.
    :hp1.next_state_if_matched:ehp1.:hp2.,:ehp2.
    :hp1.next_state_if_not_matched:ehp1.:hp2.,:ehp2.
    :hp1.next_state_if_no_keyword:ehp1.:hp2.,:ehp2.
    :hp2.":ehp2.:hp1.state_flags:ehp1.:hp2.",:ehp2.
    :hp2.":ehp2.:hp1.keyword_charset:ehp1.:hp2.":ehp2.
:hp2.}:ehp2.
:exmp.:hp2.h_wtype:ehp2. takes the following arguments&colon. 
:p.:dl compact tsize=10 break=all. 
:dt.:hp2.:hp1.next_state_if_matched:ehp1.:ehp2. 
:dd.The number of the next state if any keyword is matched. Can be -1 to
keep current state. 
:dt.:hp2.:hp1.next_state_if_not_matched:ehp1.:ehp2. 
:dd.The number of the next state if no keyword is matched. Can be -1 to
keep current state. 
:dt.:hp2.:hp1.next_state_if_no_keyword:ehp1.:ehp2. 
:dd.The number of next state if no keyword is found at all. Can be -1 to
keep current state. 
:dt.:hp2.:hp1.state_flags:ehp1.:ehp2. 
:dd.String containing zero or more of the following characters&colon. 
:p.:dl compact tsize=10 break=all. 
:dt.:hp2.i:ehp2. 
:dd.Keyword matching is performed case-insensitively. :edl.:edl.
:p.
:dt.:hp2.h_trans:ehp2. 
:dd.Defines a new state transition for current state. :xmp.
:hp2.h_trans {:ehp2.
    :hp1.next_state:ehp1.:hp2.,:ehp2.
    :hp1.trans_flags:ehp1.:hp2.,:ehp2.
    :hp1.trans_match:ehp1.:hp2.,:ehp2.
    :hp1.color_name:ehp1.
:hp2.}:ehp2.
:exmp.
:p.:hp2.h_trans:ehp2. command takes the following parameters&colon. 
:p.:dl compact tsize=10 break=all. 
:dt.:hp2.:hp1.next_state:ehp1.:ehp2. 
:dd.The number of next state to go if a match is successful. 
:dt.:hp2.:hp1.trans_flags:ehp1.:ehp2. 
:dd.Determines options for matching. Can contain zero or more of the
following characters&colon. 
:p.:dl compact tsize=10 break=all. 
:dt.:hp2.^:ehp2. 
:dd.Matches only at the beginning of the line. 
:dt.:hp2.$:ehp2. 
:dd.Matches only at the end of the line. 
:dt.:hp2.i:ehp2. 
:dd.Match is case-insensitive. 
:dt.:hp2.s:ehp2. 
:dd.:hp2.:hp1.trans_match:ehp1.:ehp2. is a character set. Matches only if the next character is part of the
set. 
:dt.:hp2.S:ehp2. 
:dd.Same as 's' but next character must not be part of the set. 
:dt.:hp2.x:ehp2. 
:dd.:hp2.:hp1.trans_match:ehp1.:ehp2. is a regular expression. If some part of expression is enclosed in
parentheses, pointer is advanced up to the start of parenthesized
match (WARNING&colon. this can cause infinite loops). 
:dt.:hp2.-:ehp2. 
:dd.After successfull match, the pointer is not advanced, matching will
resume at the same position in next state. (WARNING&colon. this can
cause infinite loops). 
:dt.:hp2.<:ehp2. 
:dd.The matched character(s) are tagged with current state number. This is
important for proper operation of :hp2.:link reftype=hd refid=301.MatchBracket:elink.:ehp2. command. MatchBracket will only match braces tagged with same state
number. 
:dt.:hp2.>:ehp2. 
:dd.The matched character(s) are tagged with next state number. 
:dt.:hp2.q:ehp2. 
:dd.On successful match quote the next character (the next character is
not used for matching). 
:dt.:hp2.Q:ehp2. 
:dd.On successful match quote the end of line (the end of line is not used
for matching). :edl.
:dt.:hp2.:hp1.trans_match:ehp1.:ehp2. 
:dd.When :hp2.S:ehp2. or :hp2.s:ehp2. option is used, a character set to be matched. When :hp2.S:ehp2. or :hp2.s:ehp2. options are not used, a string to be matched. :edl.
:p.
:dt.:hp2.h_words:ehp2. 
:dd.Specifies the set of keywords to match in this state. All characters
in keywords must be part of the :hp2.:hp1.keyword_charset:ehp1.:ehp2. in :hp2.h_wtype:ehp2. command for this mode. 
:p.:xmp.
    :hp2.h_words ":ehp2.:link reftype=hd refid=40.color_specification:elink.:hp2." {:ehp2.
        :hp2.":ehp2.:hp1.keyword:ehp1.:hp2.",:ehp2. ...
    :hp2.}:ehp2.
:exmp.
:p.Works the same way as the :hp2.:link reftype=hd refid=429.keyword:elink.:ehp2. but keywords are for current state only. 
:p.Multiple keyword sets with different colors can be defined. 
:p.'-' can be used for color specifier do use the default keyword color
specified in global settings. :edl.
:euserdoc.
