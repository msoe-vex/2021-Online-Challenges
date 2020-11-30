\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{formalLabReport}[Format class for formal lab reports]

\LoadClass[12pt]{article}

\RequirePackage[utf8]{inputenc}
\RequirePackage[english]{babel}
\RequirePackage[letterpaper,margin=1in]{geometry}
\RequirePackage{fourier}
\RequirePackage{enumitem}
\RequirePackage{titlesec}
\RequirePackage{graphicx}
\RequirePackage{fancyhdr}
\RequirePackage[tableposition=top]{caption}
\RequirePackage{amsmath}
\RequirePackage{float}
\RequirePackage{tocloft}
\RequirePackage{pdfpages}


\setkeys{Gin}{width=\textwidth}

\fancypagestyle{plain}{%
  \fancyhf{}%
  \rfoot{\thepage}
  \setlength{\headheight}{15pt}
  \lhead{}
  \rhead{}
}

\pagestyle{plain}

\titleformat{\section}{\bfseries\fontsize{16pt}{12}\selectfont}{\thesection.}{1em}{}
\titlespacing\section{0pt}{12pt plus 4pt minus 2pt}{0pt plus 2pt minus 2pt}
\titleformat{\subsection}{\bfseries\fontsize{12pt}{12}\selectfont}{\thesubsection.}{1em}{}
\titlespacing\subsection{0pt}{12pt plus 4pt minus 2pt}{0pt plus 2pt minus 2pt}

\setlength\parskip{1em plus 0.1em minus 0.2em}


% Table of contents line spacing adjustment
% Create table of contents using \tableofcontents
\setlength\cftparskip{2pt}
\setlength\cftbeforesecskip{6pt}
\setlength\cftaftertoctitleskip{6pt}


\makeatletter

% Automatic inline centering of figures and tables
\renewcommand*{\fps@figure}{H}
\renewcommand*{\fps@table}{H}
\g@addto@macro\@floatboxreset\centering

% Custom title page options
\newcommand{\submissionDate}[1]{\def\submissionDate{#1}}
\newcommand{\laboratoryDate}[1]{\def\laboratoryDate{#1}}
\newcommand{\prof}[1]{\def\prof{#1}}
\newcommand{\className}[1]{\def\className{#1}}
\newcommand{\classCode}[1]{\def\classCode{#1}}
\newcommand{\semester}[1]{\def\semester{#1}}

\renewcommand\maketitle{
{

\begin{center}
  \mbox{}\vfill
  \Huge{\textbf{\@title}}
  
  \vspace{0.8cm}
  
  \normalsize
  \@author\\
  Submission Date: \submissionDate
  
  \vspace{0.8cm}
  
  
  
  \vfill
\end{center}
\thispagestyle{empty}
\newpage

\setcounter{page}{1}

\lhead{}
\rhead{}

}
}
\makeatother