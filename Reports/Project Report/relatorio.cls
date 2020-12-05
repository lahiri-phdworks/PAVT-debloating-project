% !TeX program = xelatex
% !TeX encoding = UTF-8 Unicode
% !BIB program = bibtex

% Declaration for this class
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{relatorio}[2020/04/21 Software Debloating Techniques]

% This command has to be defined for every class
\newcommand{\headlinecolor}{\normalcolor}

\RequirePackage[english]{babel}

% Base our class on the IEEETran
\LoadClass[journal,transmag]{IEEEtran}

% Declares options accepted by this class. No \RequirePackage allowed from now
% on. Since we cannot \RequirePackage inside \DeclareOption, we have to create a
% variable to hold whether the package should be loaded.
\newif\if@langen
\newif\if@langfr
\newif\if@useminted

\DeclareOption{english}{\@langentrue}
\DeclareOption{minted}{\@usemintedtrue}

% Processes all options and puts us back into normal mode. \RequirePackage
% allowed again.
\ProcessOptions\relax

\RequirePackage{fontspec}
\defaultfontfeatures{Ligatures=TeX,Scale=MatchLowercase}
\renewcommand{\baselinestretch}{1.5} % Line height of 1.5

\if@langfr
	\RequirePackage[input-complex-roots=j,
		output-complex-root=j,
		complex-root-position=after-number]{siunitx} % SI units
\else
	\if@langen
		\RequirePackage[decimalsymbol=.,
			input-complex-roots=j,
			output-complex-root=j,
			complex-root-position=after-number]{siunitx} % SI units
	\else
		\RequirePackage[input-complex-roots=j,
			output-complex-root=j,
			complex-root-position=after-number]{siunitx} % SI units
	\fi
\fi

\RequirePackage[useregional]{datetime2}
\RequirePackage[style=abnt]{biblatex}
\RequirePackage[top=3cm,bottom=2cm,left=3cm,right=2cm]{geometry}
\RequirePackage{float}
\RequirePackage{framed}
\RequirePackage{etoolbox}
\RequirePackage{pgffor}

% Image manipulation
\RequirePackage{graphicx} % For images
\RequirePackage{rotate} % To rotate images
\RequirePackage[section]{placeins} % Prevents figures from floating to wrong places
\RequirePackage{caption}[2004/07/16]

% Math related
\RequirePackage{amssymb}
\RequirePackage{amsmath} % Mathematic symbols and stuff
\RequirePackage{amsfonts} % Mathematical fonts
\RequirePackage{cancel} % In math mode, variables to strike
\RequirePackage{subscript} % For subscript

% Table manipulation
\RequirePackage{longtable} % For long tables that take more than one page
\RequirePackage{multirow} % Multirow tables
\RequirePackage{tabulary} % Table tabulation
\RequirePackage{array}
% Makes the column type L, that is centered and allows line wrap.
\newcolumntype{L}{>{\centering\arraybackslash}m{3cm}}

% Utilities
\RequirePackage{pdfpages} % Advanced PDF importing
\RequirePackage{pdflscape} % One page panorama
\RequirePackage[european,cuteinductors,smartlabels,oldvoltagedirection]{circuitikz} % For circuits
\RequirePackage{indentfirst} % Indents first paragraph after section
\RequirePackage{chngcntr} % Change numberings
\RequirePackage{fvextra}
\RequirePackage{csquotes} % \enquote
\RequirePackage{url}
\RequirePackage{ragged2e} % Justify
\RequirePackage{lastpage}
\RequirePackage{fancyhdr} % Set headers and footers
\RequirePackage[Lenny]{fncychap} % Square chapter
\RequirePackage{acro} % abbreviations and accronyms
\RequirePackage{tocloft}

\if@useminted
	\RequirePackage[section]{minted} % Code highlighting with Pygments


	% Removes red boxes when lexer can not understand something (like @ in Python 3)
	\AtBeginEnvironment{minted}{\renewcommand{\fcolorbox}[4][]{#4}}

	% pythoncode environment for hightlight
	\newminted{python3}
	{autogobble,linenos,python3,fontseries=Consolas,fontsize=\scriptsize,frame=lines}
	\newmintedfile[python]{python3}
	{autogobble,linenos,python3,fontseries=Consolas,fontsize=\scriptsize,frame=lines}

	% ccode environment for highlight
	\newminted{c}
	{autogobble,linenos,fontseries=Consolas,fontsize=\scriptsize,frame=lines}

	\newfloat{code}{htp}{loc}
	\floatname{code}{Código}
	\newlistof{listofcodes}{loc}{Lista de Códigos}
	\newlistentry[chapter]{code}{loc}{0}
	\cftsetindents{code}{0em}{2.3em}
\fi

% End of \RequirePackage's

\usetikzlibrary{shapes,arrows,babel}

% % more space between lines in table.
\renewcommand{\arraystretch}{1.2}

\newcommand{\norm}[1]{\left\lVert#1\right\rVert}

\newcounter{authors}
\newcommand\addauthor[1]{%
	\stepcounter{authors}%
	\csdef{author\theauthors}{#1}%
}
\newcommand\getauthor[1]{\csuse{author#1}}
\newcommand\getauthors{\foreach \i in {1,...,\theauthors}{\getauthor{\i}\ifnum\i=\theauthors\@\else,\ \fi}}

\newcommand\setsubject[1]{\csdef{subject}{#1}}

\newcommand\preamble{%
	\markboth{\uppercase{\subject} --- CS-639A PAVT Course, IIT Kanpur}{}
	\author{\IEEEauthorblockN{\getauthors}}
	\hypersetup{
		unicode=true,
		pdftitle={\@title},
		pdfsubject={Relatório de \subject{}},
		pdfauthor={\getauthor{1}},
		pdfstartview={FitH}
	}%
}

\let\oldmaketitle\maketitle
\renewcommand{\maketitle}{
	\if@langfr
			\selectlanguage{english}%
			\sisetup{locale=US}%
	\else
		\if@langen
			\selectlanguage{english}%
			\sisetup{locale=US}%
		\else
			\selectlanguage{english}%
			\sisetup{locale=US}%
		\fi
	\fi
	\oldmaketitle{}
	\IEEEdisplaynontitleabstractindextext{}
	\IEEEpeerreviewmaketitle{}
}
