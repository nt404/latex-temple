\NeedsTeXFormat{LaTeX2e}[2007/10/19]
\ProvidesPackage{genereport}
%================导言区==========================%%
%-------------------宏包---------------------------%%
\LoadClass[a4paper,12pt,openany,oneside,sub4section,fancyhdr]{ctexbook}
\special{papersize=210mm,297mm}%大小
\usepackage[left=2.54cm,right=2.54cm,top=2.54cm,bottom=2.54cm,headsep=0.8cm,footskip=0.8cm]{geometry}%页面设置
%环评报告，上下2.54cm,左右3.17cm
\usepackage{xeCJK}
\usepackage{fancyhdr}
\usepackage{graphicx}
\usepackage{lscape}
\usepackage{titlesec}
%-----------------表格包------------------------
\usepackage{booktabs}
\usepackage{longtable}
\usepackage{tabu}
\usepackage{xtab}%长表格
\usepackage{bigstrut,multirow}
\usepackage{appendix}
\usepackage[final]{pdfpages}
\usepackage{bm, amsmath,amsfonts}
\usepackage{type1cm}
\usepackage{titlesec}
\usepackage{enumerate}
\usepackage{array}
\usepackage{graphicx}
\usepackage{adjustbox}
\usepackage{pifont}
\usepackage{times}
\usepackage{fontspec}
\usepackage{float}
\usepackage{framed}%带框段落
%---------------目录包---------------
\usepackage[backref,breaklinks,colorlinks,linkcolor=black,citecolor=black,urlcolor=black]{hyperref}%pdf目录
\usepackage{titletoc}
\usepackage{listings}
\includepdfset{pagecommand={\thispagestyle{fancy}}} %pdfpages宏包插入文件无页码的解决
%-------------------流程图形状
\usepackage{tikz,mathpazo}
\usetikzlibrary{shapes.geometric, arrows}
\usepackage{flowchart}
\usepackage{import}
\usepackage{textcomp}
\usepackage{latexsym,amssymb,amsmath}
\usepackage{CJK,CJKnumb}
\usepackage{rotating}
%-----------------定义区------------------%
%设置正文字体、字号
\setmainfont{Times New Roman}%英文字体
\renewcommand{\normalsize}{\fontsize{14pt}{\baselineskip}\selectfont}%定义字体
\setlength{\headheight}{12pt}%定义页眉字号
\setlength{\baselineskip}{1.8em}%定义行间距
\setlength{\parindent}{2em}                 % 首行两个汉字的缩进量
%-----------------------设定字号

%----------------标题设置--------%
\setcounter{secnumdepth}{6}
\CTEXsetup[name={第,部分},number={\chinese{chapter}}]{chapter}
\CTEXsetup[name={,},number={\arabic{section}}]{section}
\CTEXsetup[number={\arabic{section}.\arabic{subsection}}]{subsection}
\CTEXsetup[name={,},number={\arabic{section}.\arabic{subsection}.\arabic{subsubsection}}]{subsubsection}
\CTEXsetup[name={,},number={\arabic{section}.\arabic{subsection}.\arabic{subsubsection}.\arabic{paragraph}}]{paragraph}
\CTEXsetup[name={,},number={\arabic{section}.\arabic{subsection}.\arabic{subsubsection}.\arabic{paragraph}.\arabic{subparagraph}}]{subparagraph}
\CTEXoptions[contentsname={\bfseries\zihao{4} 目\quad 录}]
\CTEXsetup[beforeskip={0pt}]{chapter}
\CTEXsetup[afterskip={1em}]{chapter}
%---------------------目录设置------------------
\usepackage{listings}
\usepackage{xcolor}
\usepackage[titles]{tocloft}

%===============设置中文断行================%
\XeTeXlinebreaklocale "zh"
\XeTeXlinebreakskip = 0pt plus 1pt minus 0.1pt
%%%======解决overful\hbox=============%
\hfuzz=\maxdimen
\tolerance=1000000000
\hbadness=1000000000
%=============不浮动图片与表格定义========%
\makeatletter
\newcommand\figcaption{\def\@captype{figure}\caption}
\newcommand\tabcaption{\def\@captype{table}\caption}
\makeatother

\newenvironment{abstract}{\ifvmode\leavevmode\fi\par\centerline{{\Large \textbf{\qy }}}\par}{}%定义前言
%------------------罗马字母-------------------
\makeatletter
\newcommand{\rmnum}[1]{\romannumeral #1}
\newcommand{\Rmnum}[1]{\expandafter\@slowromancap\romannumeral #1@}
\makeatother
%-----------流程图形状------------------
\tikzstyle{startstop} = [rectangle, rounded corners, minimum width=5em, minimum height=1cm,text centered, draw=black, fill=white]
\tikzstyle{io} = [trapezium, trapezium left angle=70, trapezium right angle=110, minimum width=5em, minimum height=1cm, text centered, draw=black, fill=white]
\tikzstyle{process} = [rectangle, minimum width=5em, minimum height=1cm, text centered, draw=black, fill=white]
\tikzstyle{decision} = [diamond, minimum width=5em, minimum height=1cm, text centered, draw=black, fill=white]
\tikzstyle{arrow} = [thick,->,>=stealth]
%===============页眉页脚===============%
%双线页眉的设置
\makeatletter %双线页眉
\def\headrule{{\if@fancyplain\let\headrulewidth\plainheadrulewidth\fi%
		\hrule\@height 1.0pt \@width\headwidth\vskip1pt%上面线为1pt粗
		\hrule\@height 0.5pt\@width\headwidth  %下面0.5pt粗
		\vskip-2\headrulewidth\vskip-1pt}      %两条线的距离1pt
	\vspace{6mm}}     %双线与下面正文之间的垂直间距
\makeatother
%------------------页眉页脚定义
\pagestyle{fancy}
\lhead{\project}% 使用lhead 定义左侧上方页眉
\chead{}% 使用chead 定义上方中部页眉
\rhead{\serialno}% 使用rhead 定义右侧上方页眉
\lfoot{\company }% 使用lfoot 定义左侧下方页脚
\cfoot{第\thepage 页}% 使用cfoot 定义下方中间页脚
\rfoot{}% 使用rfoot 定义右侧下方页脚
\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\footrulewidth}{0.4pt}
%--------------定义页眉页脚-----------------%
\pagestyle{fancy}

%--------------------定义变量—————————————————
\graphicspath{{attachment/}}

