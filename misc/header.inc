\usepackage{calc}
\usepackage{graphicx}
\usepackage[latin,american]{babel}
\usepackage{fontspec}
\renewcommand*\oldstylenums[1]{#1}
\newcommand\garamond[1]{\fontspec[Ligatures=TeX,Numbers=OldStyle]{Garamond Premier Pro}#1}
\newcommand\garamondbig[1]{\LARGE\fontspec[Ligatures=TeX,Numbers=OldStyle,
	Extension = .otf,
	BoldFont = garamondpremrpro-bdsubh,
	ItalicFont = garamondpremrpro-meditsubh,
	BoldItalicFont = garamondpremrpro-bditsubh
]{garamondpremrpro-medsubh}#1}
\AtBeginDocument{\fontspec[Ligatures=TeX,Numbers=OldStyle]{Garamond Premier Pro}}
\newcommand{\versiculum}[1]{{\fontspec{versiculum}#1}}
\def\Vbar{{\versiculum{v}.}}
\def\Rbar{{\versiculum{r}.}}
\def\Abar{{\versiculum{a}.}}
\renewcommand*\bf{\bfseries}
\renewcommand*\it{\itshape}

\usepackage{geometry} % See geometry.pdf to learn the layout options. There are lots.
\usepackage[allowdeprecated=false]{gregoriotex} % for gregorio score inclusion
\ifdefined\gresetcompilegabc
    \gresetcompilegabc{auto}
\fi
\let\gredagger=\dag
%\gresetbarspacing{old}

\usepackage{fancyhdr}
\pagestyle{empty}

\grechangedim{spacelinestext}{0.7 cm}{scalable}%
\grechangedim{spacebeneathtext}{10pt}{scalable}
\grecreatedim{interwordspacenotes}{0.4 cm plus 0.05 cm minus 0.05 cm}{scalable}%
\grecreatedim{interwordspacetext}{0.23 cm plus 0.05 cm minus 0.05 cm}{scalable}%
%\grescaledim{stafflinefactor}{false}

\grechangestaffsize{25}
\grechangestyle{initial}{\fontsize{60}{60}\selectfont}
\grechangestyle{annotation}{\large}

\newcommand\printtitle[1]{
	\begin{centering}
	\Huge\garamond

	\textbf{#1}

	\end{centering}

	\bigskip
}

\newcommand\printsmalltitle[1]{
	\begin{centering}
	\LARGE\garamond

	\textbf{#1}

	\end{centering}

	\bigskip
}
