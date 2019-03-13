\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{nsf}

% Font size:
% NSF font size guidelines specify that one of the allowed fonts is
% "Computer Modern family of fonts at a font size of 11 points or larger"
% Since the default LaTeX font family is Computer Modern, 11pt is the minimum
\LoadClass[11pt, letterpaper, onecolumn]{article}
\setcounter{secnumdepth}{4}

% Decide whether to have roman (serif) or sans serif fonts throughout the document
%\renewcommand{\familydefault}{\rmdefault} % Roman (serif)
\renewcommand{\familydefault}{\sfdefault} % Sans Serif

\RequirePackage[margin=1in]{geometry}
\RequirePackage[pdftex,colorlinks,linkcolor=black,citecolor=black,urlcolor=black,filecolor=black]{hyperref}

\RequirePackage[pdftex]{graphicx}
\DeclareGraphicsExtensions{.eps,.pdf,.jpeg,.png}

\RequirePackage{fancyhdr}
\pagestyle{fancyplain}
\renewcommand{\headrulewidth}{0pt}
\fancyhf{}
\fancyfoot[R]{\thepage}

\RequirePackage{caption}
\RequirePackage{titlecaps}
\RequirePackage[explicit]{titlesec}
% section titles with underline
\titleformat{\section}{\Large\bfseries\filcenter}{}{0pt}{\titlecap{#1}\\\rule{\textwidth}{0.4pt}}
% subsection without numbering
% \titleformat{\subsection}{\large\bfseries}{}{0pt}{\titlecap{#1}}
% subsection with numbering
\renewcommand{\thesubsection}{\arabic{subsection}}
\titleformat{\subsection}{\large\bfseries}{}{0pt}{\thesubsection. \titlecap{#1}}
% subsub section with numbering
\renewcommand{\thesubsubsection}{\arabic{subsection}.\arabic{subsubsection}}
\titleformat{\subsubsection}{\bfseries}{}{0pt}{\thesubsubsection{} \titlecap{#1}}

% spacing options (comment in to reduce spacing)
%\titlespacing*{\section}{0pt}{0.5em}{0.3pt}
\titlespacing*{\subsection}{0pt}{0.75em}{0.5em}
\titlespacing*{\subsubsection}{0pt}{0.5em}{0.25em}

\renewcommand{\title}[1]{\begin{center}\LARGE\bfseries{#1}\end{center}}

\setlength{\belowcaptionskip}{-10pt}

% Reset page numbering to 1.  This is helpful, since the text can only
% be 15 pages (unless otherwise specified, see individual solicitations),
% and reviewers will want to believe we've kept it within those limits
\newcommand{\newsection}[1]{\pagenumbering{arabic}\renewcommand{\thepage}{#1--\arabic{page}}}

% comment out running title (not NSF kosher to have elaborate text footer)
\newcommand{\comment}[1]{}
