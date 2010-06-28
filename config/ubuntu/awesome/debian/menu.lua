-- automatically generated file. Do not edit (see /usr/share/doc/menu/html)

module("debian.menu")

Debian_menu = {}

Debian_menu["Debian_Ajuda"] = {
	{"Info", "x-terminal-emulator -e ".."info"},
	{"Xman","xman"},
	{"yelp","/usr/bin/yelp"},
}
Debian_menu["Debian_Aplicativos_Acessibilidade"] = {
	{"Xmag","xmag"},
}
Debian_menu["Debian_Aplicativos_Ciência_Matemática"] = {
	{"Bc", "x-terminal-emulator -e ".."/usr/bin/bc"},
	{"Dc", "x-terminal-emulator -e ".."/usr/bin/dc"},
	{"GCalcTool","/usr/bin/gcalctool","/usr/share/pixmaps/gcalctool.xpm"},
	{"OpenOffice.org Math","/usr/bin/oomath","/usr/share/icons/hicolor/32x32/apps/openofficeorg3-math.xpm"},
	{"Xcalc","xcalc"},
}
Debian_menu["Debian_Aplicativos_Ciência"] = {
	{ "Matemática", Debian_menu["Debian_Aplicativos_Ciência_Matemática"] },
}
Debian_menu["Debian_Aplicativos_Editores"] = {
	{"Gedit","/usr/bin/gedit","/usr/share/pixmaps/gedit-icon.xpm"},
	{"Nano", "x-terminal-emulator -e ".."/bin/nano","/usr/share/nano/nano-menu.xpm"},
	{"Xedit","xedit"},
}
Debian_menu["Debian_Aplicativos_Emuladores_de_Terminal"] = {
	{"Gnome Terminal","/usr/bin/gnome-terminal","/usr/share/pixmaps/gnome-terminal.xpm"},
	{"XTerm","xterm","/usr/share/pixmaps/xterm-color_32x32.xpm"},
	{"X-Terminal as root (GKsu)","/usr/bin/gksu -u root /usr/bin/x-terminal-emulator","/usr/share/pixmaps/gksu-debian.xpm"},
	{"XTerm (Unicode)","uxterm","/usr/share/pixmaps/xterm-color_32x32.xpm"},
}
Debian_menu["Debian_Aplicativos_Escritório"] = {
	{"HPLIP Fax address book","/usr/bin/hp-fab","/usr/share/pixmaps/HPmenu.xpm"},
	{"HPLIP Fax utility","/usr/bin/hp-sendfax","/usr/share/pixmaps/HPmenu.xpm"},
	{"OpenOffice.org Calc","/usr/bin/oocalc","/usr/share/icons/hicolor/32x32/apps/openofficeorg3-calc.xpm"},
	{"OpenOffice.org Impress","/usr/bin/ooimpress","/usr/share/icons/hicolor/32x32/apps/openofficeorg3-impress.xpm"},
	{"OpenOffice.org Writer","/usr/bin/oowriter","/usr/share/icons/hicolor/32x32/apps/openofficeorg3-writer.xpm"},
}
Debian_menu["Debian_Aplicativos_Gerenciamento_de_Arquivos"] = {
	{"Baobab","/usr/bin/baobab","/usr/share/pixmaps/baobab.xpm"},
	{"Brasero","/usr/bin/brasero"},
	{"File-Roller","/usr/bin/file-roller","/usr/share/pixmaps/file-roller.xpm"},
	{"GNOME Search Tool","/usr/bin/gnome-search-tool","/usr/share/pixmaps/gsearchtool.xpm"},
	{"Nautilus","/usr/bin/nautilus","/usr/share/pixmaps/nautilus.xpm"},
}
Debian_menu["Debian_Aplicativos_Gerenciamento_de_Dados"] = {
	{"Tomboy","/usr/bin/tomboy"},
}
Debian_menu["Debian_Aplicativos_Gráficos"] = {
	{"GNOME Screenshot Tool","/usr/bin/gnome-panel-screenshot"},
	{"ImageMagick","/usr/bin/display logo:","/usr/share/pixmaps/display.xpm"},
	{"OpenOffice.org Draw","/usr/bin/oodraw","/usr/share/icons/hicolor/32x32/apps/openofficeorg3-draw.xpm"},
	{"X Window Snapshot","xwd | xwud"},
}
Debian_menu["Debian_Aplicativos_Programação"] = {
	{"Erlang Shell", "x-terminal-emulator -e ".."/usr/bin/erl","/usr/share/pixmaps/erlang.xpm"},
	{"GDB", "x-terminal-emulator -e ".."/usr/bin/gdb"},
	{"Python (v2.6)", "x-terminal-emulator -e ".."/usr/bin/python2.6","/usr/share/pixmaps/python2.6.xpm"},
	{"Tclsh8.4", "x-terminal-emulator -e ".."/usr/bin/tclsh8.4"},
	{"TkWish8.4","x-terminal-emulator -e /usr/bin/wish8.4"},
}
Debian_menu["Debian_Aplicativos_Rede_Comunicação"] = {
	{"Evolution","/usr/bin/evolution","/usr/share/pixmaps/evolution.xpm"},
	{"Telnet", "x-terminal-emulator -e ".."/usr/bin/telnet"},
	{"Terminal Server Client","/usr/bin/tsclient -f","/usr/share/pixmaps/tsclient.xpm"},
	{"Xbiff","xbiff"},
	{"X Chat","/usr/bin/xchat","/usr/share/icons/xchat.xpm"},
}
Debian_menu["Debian_Aplicativos_Rede_Navegação_Web"] = {
	{"Firefox Browser","/usr/bin/firefox","/usr/share/pixmaps/firefox.png"},
	{"w3m", "x-terminal-emulator -e ".."/usr/bin/w3m /usr/share/doc/w3m/MANUAL.html"},
}
Debian_menu["Debian_Aplicativos_Rede_Transferência_de_Arquivos"] = {
	{"Transmission BitTorrent Client (GTK)","/usr/bin/transmission","/usr/share/pixmaps/transmission.xpm"},
}
Debian_menu["Debian_Aplicativos_Rede"] = {
	{ "Comunicação", Debian_menu["Debian_Aplicativos_Rede_Comunicação"] },
	{ "Navegação Web", Debian_menu["Debian_Aplicativos_Rede_Navegação_Web"] },
	{ "Transferência de Arquivos", Debian_menu["Debian_Aplicativos_Rede_Transferência_de_Arquivos"] },
}
Debian_menu["Debian_Aplicativos_Shells"] = {
	{"Bash", "x-terminal-emulator -e ".."/bin/bash --login"},
	{"Dash", "x-terminal-emulator -e ".."/bin/dash -i"},
	{"Sh", "x-terminal-emulator -e ".."/bin/sh --login"},
}
Debian_menu["Debian_Aplicativos_Sistema_Administração"] = {
	{"Aptitude", "x-terminal-emulator -e ".."/usr/bin/aptitude"},
	{"Debian Task selector", "x-terminal-emulator -e ".."su-to-root -c tasksel"},
	{"DSL/PPPoE configuration tool", "x-terminal-emulator -e ".."/usr/sbin/pppoeconf","/usr/share/pixmaps/pppoeconf.xpm"},
	{"Editres","editres"},
	{"Gnome Control Center","/usr/bin/gnome-control-center","/usr/share/pixmaps/control-center2.xpm"},
	{"GNOME Network Tool","/usr/bin/gnome-nettool","/usr/share/pixmaps/gnome-nettool.xpm"},
	{"HPLIP File printing","/usr/bin/hp-print","/usr/share/pixmaps/HPmenu.xpm"},
	{"pppconfig", "x-terminal-emulator -e ".."su-to-root -p root -c /usr/sbin/pppconfig"},
	{"QuickSynergy","/usr/bin/quicksynergy","/usr/share/pixmaps/quicksynergy.xpm"},
	{"Shares Admin","/usr/bin/shares-admin","/usr/share/gnome-system-tools/pixmaps/shares.xpm"},
	{"Time Admin","/usr/bin/time-admin","/usr/share/gnome-system-tools/pixmaps/time.xpm"},
	{"User accounts Admin","/usr/bin/users-admin","/usr/share/gnome-system-tools/pixmaps/users.xpm"},
	{"Xclipboard","xclipboard"},
	{"Xfontsel","xfontsel"},
	{"Xkill","xkill"},
	{"Xrefresh","xrefresh"},
}
Debian_menu["Debian_Aplicativos_Sistema_Ambiente_de_Linguagem"] = {
	{"im-switch", "x-terminal-emulator -e ".."/usr/bin/im-switch"},
}
Debian_menu["Debian_Aplicativos_Sistema_Gerenciamento_de_Pacotes"] = {
	{"Synaptic Package Manager","/usr/bin/gksu /usr/sbin/synaptic","/usr/share/synaptic/pixmaps/synaptic_32x32.xpm"},
}
Debian_menu["Debian_Aplicativos_Sistema_Hardware"] = {
	{"HPLIP Toolbox","/usr/bin/hp-toolbox","/usr/share/pixmaps/HPmenu.xpm"},
	{"Xvidtune","xvidtune"},
}
Debian_menu["Debian_Aplicativos_Sistema_Monitoramento"] = {
	{"GNOME Log Viewer","/usr/bin/gnome-system-log","/usr/share/pixmaps/gnome-system-log.xpm"},
	{"GNOME system monitor","/usr/bin/gnome-system-monitor"},
	{"htop", "x-terminal-emulator -e ".."/usr/bin/htop"},
	{"Pstree", "x-terminal-emulator -e ".."/usr/bin/pstree.x11","/usr/share/pixmaps/pstree16.xpm"},
	{"Top", "x-terminal-emulator -e ".."/usr/bin/top"},
	{"Xconsole","xconsole -file /dev/xconsole"},
	{"Xev","x-terminal-emulator -e xev"},
	{"Xload","xload"},
}
Debian_menu["Debian_Aplicativos_Sistema_Segurança"] = {
	{"Seahorse","/usr/bin/seahorse","/usr/share/pixmaps/seahorse.xpm"},
}
Debian_menu["Debian_Aplicativos_Sistema"] = {
	{ "Administração", Debian_menu["Debian_Aplicativos_Sistema_Administração"] },
	{ "Ambiente de Linguagem", Debian_menu["Debian_Aplicativos_Sistema_Ambiente_de_Linguagem"] },
	{ "Gerenciamento de Pacotes", Debian_menu["Debian_Aplicativos_Sistema_Gerenciamento_de_Pacotes"] },
	{ "Hardware", Debian_menu["Debian_Aplicativos_Sistema_Hardware"] },
	{ "Monitoramento", Debian_menu["Debian_Aplicativos_Sistema_Monitoramento"] },
	{ "Segurança", Debian_menu["Debian_Aplicativos_Sistema_Segurança"] },
}
Debian_menu["Debian_Aplicativos_Som"] = {
	{"gmix (Gnome 2.0 Mixer)","/usr/bin/gnome-volume-control","/usr/share/pixmaps/gnome-mixer.xpm"},
	{"grecord (GNOME 2.0 Recorder)","/usr/bin/gnome-sound-recorder","/usr/share/pixmaps/gnome-grecord.xpm"},
	{"Rhythmbox","/usr/bin/rhythmbox","/usr/share/pixmaps/rhythmbox-small.xpm"},
}
Debian_menu["Debian_Aplicativos_Texto"] = {
	{"Character map","/usr/bin/gucharmap"},
	{"GNOME Dictionary","/usr/bin/gnome-dictionary","/usr/share/pixmaps/gdict.xpm"},
}
Debian_menu["Debian_Aplicativos_TV_e_Rádio"] = {
	{"tvtime","/usr/bin/tvtime","/usr/share/pixmaps/tvtime.xpm"},
}
Debian_menu["Debian_Aplicativos_Vídeo"] = {
	{"Totem","/usr/bin/totem","/usr/share/pixmaps/totem.xpm"},
	{"VLC media player","/usr/bin/qvlc","/usr/share/vlc/vlc.xpm"},
}
Debian_menu["Debian_Aplicativos_Visualizadores"] = {
	{"Evince","/usr/bin/evince","/usr/share/pixmaps/evince.xpm"},
	{"Eye of GNOME","/usr/bin/eog","/usr/share/pixmaps/gnome-eog.xpm"},
	{"F-Spot","/usr/bin/f-spot"},
	{"Xditview","xditview"},
}
Debian_menu["Debian_Aplicativos"] = {
	{ "Acessibilidade", Debian_menu["Debian_Aplicativos_Acessibilidade"] },
	{ "Ciência", Debian_menu["Debian_Aplicativos_Ciência"] },
	{ "Editores", Debian_menu["Debian_Aplicativos_Editores"] },
	{ "Emuladores de Terminal", Debian_menu["Debian_Aplicativos_Emuladores_de_Terminal"] },
	{ "Escritório", Debian_menu["Debian_Aplicativos_Escritório"] },
	{ "Gerenciamento de Arquivos", Debian_menu["Debian_Aplicativos_Gerenciamento_de_Arquivos"] },
	{ "Gerenciamento de Dados", Debian_menu["Debian_Aplicativos_Gerenciamento_de_Dados"] },
	{ "Gráficos", Debian_menu["Debian_Aplicativos_Gráficos"] },
	{ "Programação", Debian_menu["Debian_Aplicativos_Programação"] },
	{ "Rede", Debian_menu["Debian_Aplicativos_Rede"] },
	{ "Shells", Debian_menu["Debian_Aplicativos_Shells"] },
	{ "Sistema", Debian_menu["Debian_Aplicativos_Sistema"] },
	{ "Som", Debian_menu["Debian_Aplicativos_Som"] },
	{ "Texto", Debian_menu["Debian_Aplicativos_Texto"] },
	{ "TV e Rádio", Debian_menu["Debian_Aplicativos_TV_e_Rádio"] },
	{ "Vídeo", Debian_menu["Debian_Aplicativos_Vídeo"] },
	{ "Visualizadores", Debian_menu["Debian_Aplicativos_Visualizadores"] },
}
Debian_menu["Debian_Jogos_Brinquedos"] = {
	{"Oclock","oclock"},
	{"Xclock (analog)","xclock -analog"},
	{"Xclock (digital)","xclock -digital -update 1"},
	{"Xeyes","xeyes"},
	{"Xlogo","xlogo"},
}
Debian_menu["Debian_Jogos_Cartas"] = {
	{"Gnome FreeCell","/usr/games/sol --variation freecell",},
	{"Gnome Solitaire Games","/usr/games/sol","/usr/share/pixmaps/aisleriot.xpm"},
}
Debian_menu["Debian_Jogos_Quebra-cabeças"] = {
	{"gbrainy","/usr/games/gbrainy","/usr/share/pixmaps/gbrainy.xpm"},
	{"Gnome Sudoku","/usr/games/gnome-sudoku","/usr/share/pixmaps/gnome-sudoku.xpm"},
	{"Gnomine","/usr/games/gnomine","/usr/share/pixmaps/gnomine.xpm"},
	{"Quadrapassel","/usr/games/quadrapassel","/usr/share/pixmaps/quadrapassel.xpm"},
}
Debian_menu["Debian_Jogos_Tabuleiro"] = {
	{"Gnome Mahjongg","/usr/games/mahjongg","/usr/share/pixmaps/mahjongg.xpm"},
}
Debian_menu["Debian_Jogos"] = {
	{ "Brinquedos", Debian_menu["Debian_Jogos_Brinquedos"] },
	{ "Cartas", Debian_menu["Debian_Jogos_Cartas"] },
	{ "Quebra-cabeças", Debian_menu["Debian_Jogos_Quebra-cabeças"] },
	{ "Tabuleiro", Debian_menu["Debian_Jogos_Tabuleiro"] },
}
Debian_menu["Debian"] = {
	{ "Ajuda", Debian_menu["Debian_Ajuda"] },
	{ "Aplicativos", Debian_menu["Debian_Aplicativos"] },
	{ "Jogos", Debian_menu["Debian_Jogos"] },
}
