This is a more or less up to date HTML / IPF configuration for FTE, and a new
CSS edition mode.

IPF mode has been completely rewritten, and a new CSS editon mode has been
added. The HTML part fixes several mistakes in the original one from 2001,
menus are organized more logically and includes support for common modern HTML
constructions (Flash, CSS, CC...).
For a complete list of changes, see al/m_html.fte al/m_css.fte and al/m_ipf.fte

NLV-ready, Spanish support is included.
You can enable Spanish (English is the default) menus in ui.fte. Other NLVs are
welcome if someone takes the time to produce them.

It is planned to include this as part of the main FTE distribution in the
future. This is still work in progress. ToDo: complete HTML entities support,
CSS complete menus, bug spotting and bug fixing ;-)

To install:

Unzip everything in the config folder (it won't overwrite anything), and from
the main FTE directory run "cfte.exe config/main_al.fte fte.cnf".
If you like FTE-PM run "cfte.exe config/main_al.fte ftepm.cnf" as well.

Now edit an HTML/CSS/IPF file with it and you'll see entities <-> char
conversion menus and some other changes under 'Tools'
(and of course some neatly coloured stuff :).
