\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{MathNotes}
\LoadClass{article}

\renewcommand{\arraystretch}{1.5}
%----------------------Packages--------------------------

% setting up paper and text layout
\RequirePackage[
    a4paper, 
    marginparwidth=20ex, 
    textheight=755pt, 
    textwidth=70ex,
]{geometry}
\setlength\parindent{0pt}
\raggedright
\RequirePackage{multicol}

% graphics
\RequirePackage{emoji}
\RequirePackage[dvipsnames]{xcolor}
\RequirePackage{tcolorbox}
\RequirePackage[utf8]{inputenc}
\RequirePackage{amsmath, amssymb, amsthm, amsfonts}
\RequirePackage{pgfplots}

\RequirePackage{pstricks}
\usetikzlibrary{patterns}
\RequirePackage{xifthen}

\pgfplotsset{compat=1.18}
\psset{cornersize=absolute, linearc=0.55ex}

\RequirePackage{hyperref}
\hypersetup{
    colorlinks=true,
    linkcolor=black
}

%----------------------Custom Commands--------------------

\definecolor{LightBlue}{RGB}{184, 226, 242}
\definecolor{Teal}{RGB}{134, 196, 202}
\definecolor{LightGray}{gray}{0.95}
\definecolor{LightRed}{RGB}{255, 87, 51}
\definecolor{LightPurple}{RGB}{203, 195, 227}

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
    colframe=LightPurple,
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
