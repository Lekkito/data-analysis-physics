% tesisunlp class definition. Modificada por Fernando Monticelli 
% (monticel@fisica.unlp.edu.ar)) para adaptación al formato del grupo de partículas de la UNLP
% a partir de la clase "thesis.sty" modificada por Edwin Brady
% (e.c.brady@durham.ac.uk) basada en thesis.sty escrita por
% Robert Bernecky 1997-07-10, based on
% the thesis.sty written at UofT by fpitt.
% (bernecky@acm.org)

\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{informeUNLP}[2011/08/05 definicion Clase informeUNLP] 
\RequirePackage{epsfig}




%%%%%% Declaración de opciones %%%%%%%%%%%%%%% 
\DeclareOption*{%
 \PassOptionsToClass{\CurrentOption}{article}
}

%%%%%%% es que no queremos que draft lo pase como opción a todos los paquetes. Sólo que imprima borrador en diagonal 
\DeclareOption{borrador}{%
 \PassOptionsToPackage{light}{draftcopy}% 
 %\PassOptionsToClass{draft}{book}% 
 \AtEndOfClass{%
   \RequirePackage{draftcopy}%
   \draftcopyName{Borrador Borrador}{110}
   \draftcopySetGrey{0.85}
   }%
}

\ProcessOptions




% ------- las opciones para ejecutar de la clase -----------
%\ExecuteOptions{a4paper,portrait,twoside,12pt,onecolumn}
\ExecuteOptions{a4paper,portrait,twoside}
\LoadClass{article} 
%%% Margenes %%%
\setlength{\marginparwidth}{.75in} % width of marginal notes
\setlength{\marginparsep}{.125in} % space between marginal notes and text
\setlength{\textheight}{230mm} % Height of the main body of the text
\setlength{\topmargin}{0cm} % 1'' margin on top of page
\setlength{\headsep}{7mm}  % space between header and top of body
\addtolength{\headsep}{-\headheight} % See The LaTeX Companion, p 85
\setlength{\footskip}{1cm}  % space between footer and bottom of body
\setlength{\textwidth}{170mm} % width of the body of the text
\setlength{\oddsidemargin}{5mm} % 2cm margin on the left for odd pages
\setlength{\evensidemargin}{-27mm} % 2cm margin on the right for even pages
%	%define page size 
%	\setlength{\textheight}{250mm} 
%	\setlength{\topmargin}{0mm} 
%	\setlength{\headheight}{0mm} 
%	\setlength{\headsep}{0mm} 
%	\setlength{\footskip}{10mm} 
%	\setlength{\textwidth}{165mm} 
%	\setlength{\oddsidemargin}{0mm} 
%	\setlength{\evensidemargin}{0mm} 
%
%	\setlength{\abovecaptionskip}{0pt}
%	\setlength{\belowcaptionskip}{-10pt}
%
%	\renewcommand\floatpagefraction{1.}
%	\renewcommand\topfraction{.9}
%	\renewcommand\bottomfraction{.9}
%	\renewcommand\textfraction{.0}   
%	\setcounter{totalnumber}{50}
%	\setcounter{topnumber}{50}
%	\setcounter{bottomnumber}{50}
%%%%%%%%%%%%%%%%%




%%----------------------- Entornos para las secciones de la Tesis --------------------

\newenvironment{preliminary}%
{\pagestyle{plain}\pagenumbering{roman}}%
{\pagenumbering{arabic}}

%% ----------- defino el comando de comentar ------------
\newcommand{\comment}[1]{}


% Default values for title page.


\newcommand{\department}[1]{\ifx\empty#1\else\gdef\@department{#1}\fi}
\newcommand{\degree}[1]{\ifx\empty#1\else\gdef\@degree{#1}\fi}
\newcommand{\director}[1]{\ifx\empty#1\else\gdef\@director{#1}\fi}
\newcommand{\dedicacion}[1]{\ifx\empty#1\else\gdef\@dedicacion{#1}\fi}
\renewcommand{\author}[1]{\ifx\empty#1\else\gdef\@author{#1}\fi}
\renewcommand{\title}[1]{\ifx\empty#1\else\gdef\@title{#1}\fi}
\newcommand{\gyear}[1]{\ifx\empty#1\else\gdef\@gyear{#1}\fi}

% ------ Cambiar nombres al español ------------
%\renewcommand{\chaptername}{CAPÍTULO}
\renewcommand{\figurename}{Figura}
\renewcommand{\tablename}{Tabla}
%\renewcommand{\bibname}{Bibliografía}
\renewcommand{\refname}{Bibliografía}
\renewcommand{\appendixname}{Apéndice}
\renewcommand{\indexname}{Índice alfabético}
\renewcommand{\abstractname}{Resumen}
\renewcommand{\contentsname}{Índice general}


% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\global\def\@department{\mbox{}}
\global\def\@degree{\mbox{}}
\global\def\@author{\mbox{}}
\global\def\@title{\mbox{}}
\global\def\@gyear{\number\year} % Default year is current year


% ------- Los meses en español ---------------------------
\newcommand{\monthname}[1]{%
\ifcase#1
\or enero%
\or febrero%
\or marzo%
\or abril%
\or mayo%
\or junio%
\or julio%
\or agosto%
\or septiembre%
\or octubre%
\or noviembre%
\or diciembre%
\fi}

\renewcommand{\today}{%
\number\day\ de \monthname{\month} del \number\year}
% --------------------------------------------------

