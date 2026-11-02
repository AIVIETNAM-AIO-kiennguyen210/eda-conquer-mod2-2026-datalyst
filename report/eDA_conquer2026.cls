% =========================
% aivn.cls  (AIVN Template)
% =========================
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{aivn}[2026/02/05 AIVN template]

% Pass unknown options to article
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass[12pt]{article}

% =========================================================
% I. LANGUAGE & FONT SETUP
% =========================================================
\PassOptionsToPackage{vietnamese.licr}{babel}
\PassOptionsToPackage{table}{xcolor}
\RequirePackage[vietnamese=nohyphenation]{hyphsubst}
\RequirePackage[vietnamese]{babel}
\RequirePackage[T1]{fontenc}
\RequirePackage{lmodern,mathrsfs}
\RequirePackage[bottom]{footmisc}
\usepackage{upquote}
\usepackage{titling}
\usepackage{forest}

% =========================================================
% II. BASIC PACKAGES
% =========================================================
\RequirePackage[table,dvipsnames]{xcolor}
\RequirePackage{ragged2e}
\RequirePackage{svg}
\RequirePackage{booktabs}
\RequirePackage{caption}
\RequirePackage{subcaption}
\RequirePackage{float}
\RequirePackage{amsmath,amssymb,amsfonts}
\RequirePackage{mathtools}
\RequirePackage{graphicx}
\RequirePackage{adjustbox}
\RequirePackage{multicol}
\RequirePackage[inline,shortlabels]{enumitem}
\RequirePackage{longtable}
\RequirePackage{setspace}
\RequirePackage{bm}
\RequirePackage{titling}
\RequirePackage{tabularx}
\RequirePackage{makecell}
\RequirePackage{xurl}
\RequirePackage{framed}
\RequirePackage{fancyhdr}
\RequirePackage{dirtree}
\RequirePackage{epigraph}
\RequirePackage{titlesec}
\RequirePackage{tocloft}
\usepackage{longtable}
\RequirePackage{tikz}
\RequirePackage{forest}
\RequirePackage{array}
% =========================================================
% III. PAGE & TOC SETTINGS
% =========================================================
\setlength{\headheight}{14.5pt}
\setlength{\topmargin}{-.5in}
\setlength{\textheight}{9.25in}
\setlength{\oddsidemargin}{0.01in}
\setlength{\textwidth}{6.7in}

% \renewcommand{\cfttoctitlefont}{\Huge\bfseries}
\renewcommand{\cfttoctitlefont}{%
  \normalfont\fontsize{18pt}{22pt}\selectfont
  \bfseries\color{aivnDarkGreen}%
}
\setlength{\cftaftertoctitleskip}{2em}
\setlength{\cftbeforesubsecskip}{7pt}
\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}
\setlength{\cftsecnumwidth}{3em}
\renewcommand{\cftsecaftersnum}{\quad}
\setlength{\cftsubsecnumwidth}{4em}
\renewcommand{\cftsubsecaftersnum}{\quad}
\setlength{\cftsubsubsecnumwidth}{5em}
\renewcommand{\cftsubsubsecaftersnum}{\quad}

% =========================================================
% IV. BIBLIOGRAPHY & APPENDIX
% =========================================================
\RequirePackage[
    backend=bibtex,
    style=ieee,
    maxnames=1,
    minnames=1,
    uniquelist=false,
    hyperref=false
]{biblatex}

\DefineBibliographyStrings{english}{andothers = {et\addabbrvspace al\adddot}}
\AtBeginBibliography{\selectlanguage{english}}
\AtBeginDocument{\renewcommand\refname{}}

\RequirePackage[toc,page]{appendix}
\renewcommand{\appendixtocname}{Phụ lục}
\makeatletter
\renewcommand{\appendixpagename}{%
  \protect\normalfont
  \protect\fontsize{18pt}{22pt}\protect\selectfont
  \protect\bfseries
  \protect\color{aivnDarkGreen}Phụ lục%
}
\makeatother

% =========================================================
% V. HYPERLINKS & UTILITIES
% =========================================================
\RequirePackage{hyperref}
\hypersetup{
    colorlinks=true,
    linkcolor=black,
    filecolor=magenta,
    citecolor=black,
    urlcolor=blue,
    pdfborder={0 0 0}, % tắt border (an toàn)
    pdftitle={AIO2025 Material},
    pdfpagemode=FullScreen
}

\RequirePackage[os=win]{menukeys}

% =========================================================
% VI. GLOBAL STYLE ADJUSTMENTS
% =========================================================
\setlength{\parskip}{0.5em}
\setlength{\parindent}{0pt}

% =========================================================
% VII. MULTIPLE-CHOICE ENVIRONMENT (AIVN STYLE)
% =========================================================
\makeatletter
\newcounter{choice}
\renewcommand\thechoice{\Alph{choice}.}
\newcommand\choicelabel{\thechoice}

\newenvironment{choices}%
  {\list{\choicelabel}%
     {%
       \usecounter{choice}%
       \def\makelabel##1{\hss\llap{##1}}%
       \settowidth{\leftmargin}{W.\hskip\labelsep\hskip 0 em}%
       \def\choice{\item}%
       \labelwidth\leftmargin
       \advance\labelwidth-\labelsep
       \topsep=0pt
       \partopsep=0pt
       \itemsep=3pt
     }%
  }%
  {\endlist}

% NOTE: \addanswer không có trong đoạn bạn gửi.
% Nếu bạn không dùng \CChoice thì có thể xoá block này.
\def\CChoice{%
  \choice
  \addanswer{\theenumi}{\thechoice}%
}

\newenvironment{multichoices}[1][1]{%
  \begin{multicols}{#1}%
  \begin{choices}%
}{%
  \end{choices}%
  \end{multicols}%
}
\makeatother

% =========================================================
% VIII. COLORS (palette)
% =========================================================
\definecolor{aivnGreen}{RGB}{52,79,30}
\definecolor{captiongray}{gray}{0.15}
\definecolor{captionbg}{RGB}{242,255,242}
\definecolor{watchoutbg}{RGB}{255,245,230}
\definecolor{watchoutborder}{RGB}{255,140,0}
\definecolor{aivnGreenLight}{RGB}{235,243,230}
\definecolor{aivnGreenRow}{RGB}{246,250,243}

\definecolor{codebackground}{RGB}{250,250,250}
\definecolor{codecomment}{RGB}{34,139,34}
\definecolor{codekeyword}{RGB}{0,0,255}
\definecolor{codestring}{RGB}{255,0,0}
\definecolor{codeidentifier}{RGB}{0,0,0}
\definecolor{codelinenumbers}{RGB}{90,90,90}

\definecolor{codegreen}{rgb}{0,0.6,0}
\definecolor{codegray}{rgb}{0.5,0.5,0.5}
\definecolor{codepurple}{rgb}{0.58,0,0.82}
\definecolor{backcolour}{rgb}{0.95,0.95,0.92}

\definecolor{aivnDarkGreen}{RGB}{15,36,18}

\definecolor{aivnGold}{RGB}{168,138,62}

% =========================================================
% IX. CODE LISTINGS & BOXES
% =========================================================
\RequirePackage{iftex}
\IfFileExists{vipythonhighlight.sty}{\RequirePackage{vipythonhighlight}}{}
\RequirePackage{listings}
\IfFileExists{tvietlistings.sty}{\RequirePackage{tvietlistings}}{}
\RequirePackage[most]{tcolorbox}
\tcbuselibrary{listings,skins,breakable}

% Font for cmd blocks
\ifLuaTeX
  \RequirePackage{fontspec}
  \newfontfamily\cmdmono{Consolas}
\else\ifXeTeX
  \RequirePackage{fontspec}
  \newfontfamily\cmdmono{Consolas}
\else
  \newcommand{\cmdmono}{\ttfamily}
\fi\fi

\definecolor{crtgreen}{rgb}{0.0,0.85,0.2}

\lstdefinestyle{aivncmdstyle}{
  language=bash,
  basicstyle=\cmdmono\footnotesize\color{crtgreen},
  keywordstyle=\color{crtgreen},
  stringstyle=\color{crtgreen},
  commentstyle=\color{crtgreen!70!black},
  columns=fullflexible,
  keepspaces=true,
  showstringspaces=false,
  upquote=true,
  breaklines=true,
  morekeywords={git,dvc,ls,cd,export},
}

\newtcblisting{aivncmdbox}[1][]{%
  enhanced, breakable,
  listing engine=listings, listing only,
  colback=black!85!white, colframe=aivnGreen, coltext=white,
  coltitle=white, title={#1}, fonttitle=\bfseries\sffamily,
  left=6pt,right=6pt,top=6pt,bottom=6pt, arc=2mm, boxrule=0.4pt,
  listing options={style=aivncmdstyle, numbers=none}
}

\lstdefinestyle{aivnoutputstyle}{
  basicstyle=\ttfamily\footnotesize\color{black!85},
  commentstyle=\color{black!60},
  stringstyle=\color{black!70},
  breaklines=true,
  keepspaces=true,
  showstringspaces=false,
  columns=fullflexible,
}

\newtcblisting{aivnoutputbox}[1][]{%
  enhanced, breakable,
  listing engine=listings, listing only,
  colback=white, colframe=aivnGreen, coltext=black!85,
  coltitle=white, title={#1}, fonttitle=\bfseries\sffamily,
  left=6pt,right=6pt,top=6pt,bottom=6pt, arc=2mm, boxrule=0.4pt,
  listing options={style=aivnoutputstyle, numbers=none}
}

\lstdefinestyle{mystyle}{
  backgroundcolor=\color{codebackground},
  commentstyle=\color{codecomment},
  keywordstyle=\color{codekeyword},
  stringstyle=\color{codestring},
  identifierstyle=\color{codeidentifier},
  basicstyle=\ttfamily\footnotesize,
  breaklines=true,
  numbers=left,
  numberstyle=\tiny\color{codelinenumbers},
  numbersep=5pt,
  showstringspaces=false,
  tabsize=2
}
\lstset{style=mystyle}

\newtcolorbox{aivncodebox}[1][]{%
  enhanced, breakable,
  colback=gray!10, colframe=aivnGreen,
  coltitle=white, colbacktitle=aivnGreen,
  title=#1, fonttitle=\bfseries\sffamily,
  listing only,
  listing engine=listings,
  listing options={
    language=Python,
    basicstyle=\ttfamily\footnotesize,
    commentstyle=\color{ForestGreen},
    keywordstyle=\color{blue},
    stringstyle=\color{red!70!black},
    numbers=left, upquote=true,
    numberstyle=\tiny\color{gray},
    numbersep=5pt,
    breaklines=true,
    xleftmargin=1.5em,
    framexleftmargin=1.5em
  }
}

% =========================================================
% AIVN TABLE STYLE
% =========================================================

\newtcolorbox{questionbox}[1][]{%
    enhanced,
    breakable,
    colback=green!2,
    colframe=green!15!white,
    boxrule=0.5pt,
    arc=3pt,
    left=12mm,
    right=12mm,
    top=4mm,
    bottom=4mm,
    before skip=8pt,
    after skip=10pt,
    halign=center,
    fontupper=\normalfont\itshape\color{aivnDarkGreen},
    overlay={
        % quote mở bên trái
        \node[
            anchor=west,
            text=aivnGreen,
            font=\fontsize{24}{24}\selectfont
        ] at ([xshift=3mm]frame.west) {\textquotedblleft};

        % quote đóng bên phải
        \node[
            anchor=east,
            text=aivnGreen,
            font=\fontsize{24}{24}\selectfont
        ] at ([xshift=-3mm]frame.east) {\textquotedblright};
    },
    #1
}
\newtcolorbox{infobox}[1]{%
    enhanced, 
    breakable, 
    colback=green!3, 
    colframe=green!3, 
    arc=5pt,
    borderline west={3pt}{0pt}{aivnGreen},
    attach boxed title to top left={ 
        yshift*=-\tcboxedtitleheight/2, 
        xshift=-0.1em 
    },
    colbacktitle=aivnGreen, %
    coltitle=white, 
    fonttitle=\bfseries, 
    boxed title style={ 
        arc=4pt, 
        top=2pt, 
        bottom=2pt,
        left=8pt,
        right=8pt,
    },
    title={\faInfoCircle\quad #1}
}

% --- Guideline/Tip box ---
\newtcolorbox{tipbox}[2][]{%
    enhanced,
    breakable,
    colback=yellow!5!white,
    colframe=yellow!5!white,
    arc=5pt,
    borderline west={3pt}{0pt}{orange!90!black},
    attach boxed title to top left={
        yshift*=-\tcboxedtitleheight/2,
        xshift=-0.1em
    },
    colbacktitle=orange!90!black,
    coltitle=white,
    fonttitle=\bfseries,
    boxed title style={
        arc=4pt,
        top=2pt,
        bottom=2pt,
        left=8pt,
        right=8pt,
    },
    title={\faLightbulb\quad #2},
    #1
}

% =========================================================
% X. CUSTOM BOXES & CAPTIONS
% =========================================================
\newtcolorbox{captionbelowboxaivn}{
  colback=aivnGreen,
  colframe=aivnGreen,
  boxrule=0pt, arc=4pt,
  left=4pt, right=4pt, top=2pt, bottom=2pt,
  width=\linewidth,
  halign=center,
  fontupper=\color{white}
}

\newtcolorbox{figurecardcaptionaivn}{
  colback=aivnGreen,
  colframe=aivnGreen,
  boxrule=0pt, arc=2pt,
  top=3pt, bottom=3pt, left=10pt, right=10pt,
  width=\linewidth,
  fontupper=\small\fontsize{11pt}{13pt}\selectfont\color{white}
}

\newtcolorbox{figurecaptionmodern}{
  colback=captionbg,
  colframe=aivnGreen,
  boxrule=1.5pt, bottomrule=2pt,
  left=6pt, right=6pt, top=4pt, bottom=2pt,
  width=\linewidth,
  fontupper=\small\fontsize{11pt}{13pt}\selectfont\color{black},
  halign=center
}

\newcounter{bang}
\newcommand{\captable}[1]{%
  \refstepcounter{bang}%
  Bảng~\thebang:~#1
}

\newtcolorbox{minisummaryboxaivn}{
  colback=captionbg!60,
  colframe=aivnGreen,
  arc=2pt,
  boxrule=0.6pt,
  left=6pt, right=6pt, top=4pt, bottom=4pt,
  fontupper=\small,
  width=\linewidth
}

% notebox needs fontawesome5
\IfFileExists{fontawesome5.sty}{\RequirePackage{fontawesome5}}{%
  % fallback nếu thiếu fontawesome5
  \newcommand{\faInfoCircle}{i}
}

\newtcolorbox{notebox}[2][]{enhanced,breakable,
  colback=gray!50!white,
  colframe=aivnGreen,
  fonttitle=\bfseries,
  title={\faInfoCircle\;Chú thích: #2},
  boxrule=0.8pt, arc=3pt,
  left=1mm, right=1mm, top=1mm, bottom=1mm,
  #1}


% --- Guideline/Tip box ---
\newtcolorbox{guidelinebox}[2][]{
    enhanced,
    breakable,
    colback=yellow!10!white,
    colframe=orange!90!black,
    boxrule=1pt,
    arc=4pt,
    fonttitle=\bfseries,
    attach boxed title to top left={yshift=-2mm, xshift=3mm},
    colbacktitle=orange!90!black,
    coltitle=white,
    title=\faLightbulb\hspace{1mm} #2,
    #1
}

% =========================================================
% XI. COUNTERS, MATH, TITLE FORMAT, LOGO
% =========================================================
\newcounter{mycounter}
\newcommand\showmycounter{\stepcounter{mycounter}\themycounter}
\newcounter{hinh}

\DeclareMathOperator*{\argmax}{arg\,max}
\DeclareMathOperator*{\argmin}{arg\,min}
\DeclareMathOperator{\E}{\mathbb{E}}

% \renewcommand{\thesection}{\Roman{section}.}
% \renewcommand{\thesubsection}{\thesection\arabic{subsection}.}
% \renewcommand{\thesubsubsection}{\thesubsection\arabic{subsubsection}.}

\renewcommand{\thesection}{\Roman{section}.}
\renewcommand{\thesubsection}{\arabic{subsection}.}
\renewcommand{\thesubsubsection}{\arabic{subsection}.\arabic{subsubsection}}

% \titleformat{\section}{\normalfont\Huge\bfseries}{\thesection}{1em}{}
% \titleformat{\subsection}{\normalfont\Large\bfseries}{\thesubsection}{1em}{}
% \titleformat{\subsubsection}{\normalfont\normalsize\bfseries}{\thesubsubsection}{1em}{}

% \titleformat{\section}{\normalfont\Large\bfseries}{\thesection}{1em}{}
% \titleformat{\subsection}{\normalfont\normalsize\bfseries}{\thesubsection}{1em}{}
% \titleformat{\subsubsection}{\normalfont\small\bfseries}{\thesubsubsection}{1em}{}

% \titlespacing*{\section}{0pt}{1.2ex plus .2ex minus .2ex}{0.75ex}
% \titlespacing*{\subsection}{0pt}{0.8ex plus .2ex minus .2ex}{0.5ex}
% \titlespacing*{\subsubsection}{0pt}{0.6ex plus .2ex minus .2ex}{0.4ex}

% Logo: cho phép đổi đường dẫn nếu muốn
\newcommand{\AIVNLogoPath}{Figures/logo.pdf}
\newcommand{\AIVNSetLogo}[1]{\renewcommand{\AIVNLogoPath}{#1}}

\setlength{\droptitle}{-8em}
\pretitle{%
  \begin{flushleft}
    \includegraphics[height=2.0cm]{\AIVNLogoPath}\par
  \end{flushleft}
}
\posttitle{}

% =========================================================
% XII. DUAL-OPTION TABLE OF CONTENTS
% =========================================================
\makeatletter
\newcommand{\twocolumntoc}{%
  \begingroup
  \setlength{\columnsep}{2em} 
  
  \renewcommand{\cfttoctitlefont}{\LARGE\bfseries}
  
  \renewcommand{\cftsecfont}{\small\bfseries}
  \renewcommand{\cftsecpagefont}{\small\bfseries}
  \renewcommand{\cftsubsecfont}{\small}
  \renewcommand{\cftsubsecpagefont}{\small}
  \renewcommand{\cftsubsubsecfont}{\small}
  \renewcommand{\cftsubsubsecpagefont}{\small}
  
  \@cftmaketoctitle
  \begin{multicols}{2}
    \@starttoc{toc}%
  \end{multicols}
  \endgroup
}
\makeatother


% =========================================================
% XIII. HEADERS & FOOTERS
% =========================================================
% Footer spacing
\setlength{\footskip}{3em}

% Common footer content
\newcommand{\AIVNFooterLeft}{%
  \href{https://zalo.me/84911118758}{%
    \textcolor{aivnGreen}{%
      \faIcon{phone-alt}\hspace{0.45em}%
      \bfseries SĐT/Zalo: 0911118758 (Dr. Hồng Phúc)%
    }%
  }%
}

\newcommand{\LogoHeaderRule}{%
  \noindent
  \begin{tikzpicture}
    \draw[aivnGreen, line width=3.0pt]
      (0,0) -- (\textwidth,0);
  \end{tikzpicture}%
}

\newcommand{\AIVNFooterRight}{%
  \textcolor{aivnGreen}{\bfseries Trang \thepage}%
}

% Common rule style
\newcommand{\AIVNHeadRule}{%
  {\color{aivnGreen}\hrule width\headwidth height\headrulewidth \vskip-\headrulewidth}%
}

\newcommand{\AIVNFootRule}{%
  \vskip 0.35em%
  {\color{aivnGreen}\hrule width\headwidth height\footrulewidth}%
  \vskip 0.45em%
}
% =========================================================
% DEFAULT PAGE STYLE
% =========================================================
\pagestyle{fancy}
\fancyhf{}

\fancyhead[L]{%
  \href{https://www.facebook.com/aivietnam.edu.vn}{%
    \textcolor{aivnGreen}{\bfseries AI VIET NAM (AIO2026)}%
  }%
}

\fancyhead[R]{%
  \href{https://aivietnam.edu.vn/}{%
    \textcolor{aivnGreen}{\bfseries aivietnam.edu.vn}%
  }%
}

\fancyfoot[L]{\AIVNFooterLeft}
\fancyfoot[R]{\AIVNFooterRight}

\renewcommand{\headrulewidth}{1.0pt}
\renewcommand{\headrule}{\AIVNHeadRule}

\renewcommand{\footrulewidth}{1.0pt}
\renewcommand{\footrule}{\AIVNFootRule}

% =========================================================
% FIRST PAGE STYLE
% =========================================================
\fancypagestyle{firstpage}{
  \fancyhf{}

  \fancyfoot[L]{\AIVNFooterLeft}
  \fancyfoot[R]{\AIVNFooterRight}

  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\headrule}{}

  \renewcommand{\footrulewidth}{1.0pt}
  \renewcommand{\footrule}{\AIVNFootRule}
}



% \titleformat{\section}
%   {\normalfont\fontsize{16pt}{20pt}\selectfont\bfseries}
%   {\thesection}
%   {0.85em}
%   {}

% \titleformat{\subsection}
%   {\normalfont\fontsize{14pt}{16pt}\selectfont\bfseries}
%   {\thesubsection}
%   {0.75em}
%   {}

% \titleformat{\subsubsection}
%   {\normalfont\fontsize{12pt}{15pt}\selectfont\bfseries}
%   {\thesubsubsection}
%   {0.65em}
%   {}

\titleformat{\section}
  {\normalfont\fontsize{18pt}{22pt}\selectfont\bfseries\color{aivnDarkGreen}}
  {\thesection}
  {0.85em}
  {}

\titleformat{\subsection}
  {\normalfont\fontsize{14pt}{16pt}\selectfont\bfseries\color{aivnDarkGreen}}
  {\thesubsection}
  {0.75em}
  {}

\titleformat{\subsubsection}
  {\normalfont\fontsize{12pt}{15pt}\selectfont\bfseries\color{aivnDarkGreen}}
  {\thesubsubsection}
  {0.65em}
  {}
% % Paper-like compact spacing -------------------------------------------------
\titlespacing*{\section}
  {0pt}
  {1.25em plus 0.2em minus 0.1em}
  {0.65em plus 0.1em minus 0.1em}

\titlespacing*{\subsection}
  {0pt}
  {1.0em plus 0.2em minus 0.1em}
  {0.45em plus 0.1em minus 0.1em}

\titlespacing*{\subsubsection}
  {0pt}
  {0.85em plus 0.15em minus 0.1em}
  {0.35em plus 0.1em minus 0.1em}

% Logo + Title ---------------------------------------------------------------

\setlength{\droptitle}{-7em}

\newcommand{\TitleRule}{%
  \begin{tikzpicture}[baseline=-0.5ex]
    \draw[aivnGreen, line width=0.7pt]
      (0,0) -- (\linewidth,0);
  \end{tikzpicture}%
}

\newlength{\TitleBlockHeight}
\setlength{\TitleBlockHeight}{2.2cm}

\pretitle{%
  \noindent
  \makebox[\textwidth][l]{%
    \includegraphics[height=2.1cm]{Figures/eDA-logo.jpeg}%
  }%
  \par\vspace{0.01em}
  \LogoHeaderRule
  \par\nointerlineskip
}