\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{MathNotes}
\LoadClass{article}

\renewcommand{\arraystretch}{1.5}
%----------------------Packages--------------------------

\RequirePackage[
    a4paper, 
    marginparwidth=20ex, 
    textheight=755pt, 
    textwidth=70ex,
]{geometry}
\RequirePackage[document]{ragged2e}
\setlength\parindent{0pt}
\RequirePackage{emoji}
\RequirePackage[dvipsnames]{xcolor}
\RequirePackage{tcolorbox}
\RequirePackage[utf8]{inputenc}
\RequirePackage{pstricks}
\RequirePackage{hyperref}
\RequirePackage{multicol}


\RequirePackage{amsmath, amssymb, amsthm, amsfonts}
\RequirePackage{pgfplots}
\usetikzlibrary{patterns}
\pgfplotsset{compat=1.18}
\psset{cornersize=absolute, linearc=0.55ex}

%----------------------Custom Commands--------------------

\definecolor{LightBlue}{RGB}{184, 226, 242}
\definecolor{Teal}{RGB}{134, 196, 202}
\definecolor{LightGray}{gray}{0.95}
\definecolor{LightRed}{RGB}{255, 87, 51}

\newtcolorbox{BlueBox}[2]{
    colback=LightGray,
    colframe=LightBlue,
    fonttitle=\bfseries,
    title= {
        \psframebox[fillcolor=LightGray, fillstyle=solid]{\textcolor{black}{#1}}
        \textcolor{black}{#2}
    }
}

\newtcolorbox{RedBox}[2]{
    colback=LightGray,
    colframe=Salmon,
    fonttitle=\bfseries,
    title= {
        \psframebox[fillcolor=LightGray, fillstyle=solid]{\textcolor{black}{#1}}
        \textcolor{black}{#2}
    }
}

\newtcolorbox{PurpleBox}[2]{
    colback=LightGray,
    colframe=Periwinkle,
    fonttitle=\bfseries,
    title= {
        \psframebox[fillcolor=LightGray, fillstyle=solid]{\textcolor{black}{#1}}
        \textcolor{black}{#2}
    }
}

\newtcolorbox{YellowBox}[2]{
    colback=LightGray,
    colframe=Goldenrod,
    fonttitle=\bfseries,
    title= {
        \psframebox[fillcolor=LightGray, fillstyle=solid]{\textcolor{black}{#1}}
        \textcolor{black}{#2}
    }
}

\newtcolorbox{GrayBox}[2]{
    colback=LightGray,
    fonttitle=\bfseries,
    title= {
        \psframebox[fillcolor=LightGray, fillstyle=solid]{\textcolor{black}{#1}}
        #2
    }
}

\newenvironment{example}[1]
{\begin{BlueBox}{Example}{#1}}{\end{BlueBox}}

\newenvironment{definition}[1]
{\begin{RedBox}{Definition}{#1}}{\end{RedBox}}
    
\newenvironment{note}[1]
{\begin{YellowBox}{Note}{#1}}{\end{YellowBox}}

\newenvironment{theorem}[1]
{\begin{GrayBox}{Theorem}{#1}}{\end{GrayBox}}

\newcommand{\br}{
\begin{center}
\line(1,0){4ex}
\end{center}}
