\NeedsTeXFormat{LaTeX2e}[2007/10/19]
\ProvidesPackage{genereport}[gene，2019v2.0]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions\relax
\LoadClass[a4paper,12pt,openany,oneside,sub4section,fancyhdr]{ctexbook}
%------------宏包
\RequirePackage[left=2.54cm,right=2.54cm,top=2.54cm,bottom=2.54cm,headsep=0.8cm,footskip=0.8cm]{geometry}%页面设置
%环评报告，上下2.54cm,左右3.17cm
\RequirePackage{xeCJK}
\RequirePackage{fancyhdr}
\RequirePackage{graphicx}
\RequirePackage{lscape}
\RequirePackage{titlesec}
%-----------------表格包------------------------
\RequirePackage{booktabs}
\RequirePackage{longtable}
\RequirePackage{tabu}
\RequirePackage{xtab}%长表格
%定义双标题命令
\newcommand{\TableBicaption}[2]{
  \renewcommand{\tablename}{表}
  \vspace{8pt}
  \caption{#1}
  \vspace{6pt}
  \addtocounter{table}{-1}
  \renewcommand{\tablename}{Table}
  \captionsetup{list=false}
  \caption{#2}
  \captionsetup{list=true}
  \renewcommand{\tablename}{表}
}
%-------
\RequirePackage{bigstrut,multirow}
%-------------
\RequirePackage{appendix}
\RequirePackage[final]{pdfpages}
\RequirePackage{bm, amsmath,amsfonts}
\RequirePackage{type1cm}
\RequirePackage{titlesec}
\RequirePackage{enumerate}
\RequirePackage{array}
\RequirePackage{graphicx}
\RequirePackage{adjustbox}
\RequirePackage{pifont}
\AtEndOfClass{\RequirePackage{times}}
\RequirePackage{fontspec}
\RequirePackage{float}
\RequirePackage{framed}%带框段落
%---------------目录包---------------
\RequirePackage[backref,breaklinks,colorlinks,linkcolor=black,citecolor=black,urlcolor=black]{hyperref}%pdf目录
\RequirePackage{titletoc}
\RequirePackage{listings}
\includepdfset{pagecommand={\thispagestyle{fancy}}} %pdfpages宏包插入文件无页码的解决
%-------------------流程图形状
\RequirePackage{tikz,mathpazo}
\usetikzlibrary{shapes.geometric, arrows}
\RequirePackage{flowchart}
\RequirePackage{import}
\RequirePackage{textcomp}
\RequirePackage{latexsym,amssymb,amsmath}
\RequirePackage{CJK,CJKnumb}
\RequirePackage{rotating}
%-----------------定义区------------------%
%设置正文字体、字号
\setmainfont{Times New Roman}%英文字体
\renewcommand{\normalsize}{\fontsize{14pt}{\baselineskip}\selectfont}%定义字体
\setlength{\headheight}{12pt}%定义页眉字号
\setlength{\baselineskip}{1.8em}%定义行间距
\setlength{\parindent}{2em}                 % 首行两个汉字的缩进量
%-----------------------设定字号
\newcommand{\chuhao}{\fontsize{42pt}{\baselineskip}\selectfont} %初号
\newcommand{\xiaochuhao}{\fontsize{36pt}{\baselineskip}\selectfont} %小初号
\newcommand{\yihao}{\fontsize{28pt}{\baselineskip}\selectfont} %一号
\newcommand{\erhao}{\fontsize{21pt}{\baselineskip}\selectfont} %二号
\newcommand{\xiaoerhao}{\fontsize{18pt}{\baselineskip}\selectfont} %小二号
\newcommand{\sanhao}{\fontsize{15.75pt}{\baselineskip}\selectfont} %三号
\newcommand{\sihao}{\fontsize{14pt}{\baselineskip}\selectfont}% 四号
\newcommand{\xiaosihao}{\fontsize{12pt}{\baselineskip}\selectfont} %小四号
\newcommand{\wuhao}{\fontsize{10.5pt}{\baselineskip}\selectfont} %五号
\newcommand{\xiaowuhao}{\fontsize{9pt}{\baselineskip}\selectfont} %小五号
\newcommand{\liuhao}{\fontsize{7.875pt}{\baselineskip}\selectfont} %六号
\newcommand{\qihao}{\fontsize{5.25pt}{\baselineskip}\selectfont} %七号
%----------------标题设置--------%
\setcounter{secnumdepth}{5}
\titleformat{\chapter}[block]{\centering\sanhao\bfseries}{第 \arabic{chapter} 章}{1em}{}
\titleformat{\section}[block]{\sihao\bfseries}{\arabic{section}}{1em}{}
\titleformat{\subsection}[block]{\sihao\bfseries}{\arabic{section}.\arabic{subsection}}{1em}{}
\titleformat{\subsubsection}[block]{\sihao\bfseries}{\arabic{section}.\arabic{subsection}.\arabic{subsubsection}}{1em}{}
\titleformat{\paragraph}[block]{\sihao\bfseries}{\arabic{section}.\arabic{subsection}.\arabic{subsubsection}.\arabic{paragraph}}{1em}{}
\titleformat{\subparagraph}[block]{\sihao\bfseries}{\arabic{section}.\arabic{subsection}.\arabic{subsubsection}.\arabic{paragraph}.\arabic{subparagraph}}{1em}{}
%---------------------目录设置------------------
\RequirePackage{titletoc} 
\renewcommand\contentsname{\centerline{\toctitlefont{目\quad{}录}}}
\titlecontents{chapter}[0ex]{\tocchapterfont}{%
    第\CJKnumber{\thecontentslabel}章\quad{}}{}{%
    \hspace{.5em}\titlerule*[5pt]{$\cdot$}\contentspage}%
\titlecontents{section}[1em]{\tocsectionfont}{%
    \thecontentslabel\quad{}}{}{%
    \hspace{.5em}\titlerule*[5pt]{$\cdot$}\contentspage}%
\titlecontents{subsection}[2em]{\tocsubsectionfont}{%
    \thecontentslabel\quad{}}{}{%
    \hspace{.5em}\titlerule*[5pt]{$\cdot$}\contentspage}%
\titlecontents{subsubsection}[3em]{\tocsubsubsectionfont}{%
    \thecontentslabel\quad{}}{}{%
    \hspace{.5em}\titlerule*[5pt]{$\cdot$}\contentspage}%

%===============设置中文断行================%
\XeTeXlinebreaklocale "zh"
\XeTeXlinebreakskip = 0pt plus 1pt minus 0.1pt
%%%======报警处理=============%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%不要拉大行距使得页面充满
\raggedbottom
% 去掉页面中的badboxes报警，同上
% \setlength\parskip{.5\baselineskip
% 	plus .1\baselineskip
% 	minus .4\baselineskip
% }
\hbadness=10000 \tolerance=10000 \hfuzz=150pt % 去掉表格中的badboxes报警,看着不爽
%------------封面页----------
\DeclareOption{titlepage}{\@titlepagetrue}%封面单独一页
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
\pagestyle{fancy}

%--------------------定义变量—————————————————
\graphicspath{{attachment/}}
%----finished
\endinput
