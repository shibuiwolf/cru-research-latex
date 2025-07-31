\LoadClassWithOptions{memoir}

% MATH ===============================================
\usepackage{amsmath,amssymb,amsfonts,amsthm,bm}

% MARGIN ==============================================
\usepackage
[top=1.5in, bottom=1in, left=1.5in, right=1in]
{geometry}

% LINE SPACE ===========================================
\setSpacing{1.427465}

% INDENTATION =========================================
\usepackage{indentfirst}
\setlength{\parindent}{0.8in}

% PAGE STYLE ===========================================
\makepagestyle{topright}
\makeevenhead{topright}{\thepage}{}{}
\makeoddhead{topright}{}{}{\thepage}
\renewcommand{\frontmatter}{\renewcommand{\thepage}{(\arabic{page})}\clearpage\pagestyle{topright}}
\renewcommand{\mainmatter}{\renewcommand{\thepage}{\arabic{page}}\clearpage\pagestyle{topright}}

% FONT ================================================
\usepackage[no-math]{fontspec}
\setmainfont[%
	Script=Default,
    Ligatures=TeX,%
    Scale=1.333333333,%
    Path = Fonts/,
    ItalicFont=THSarabunNew Italic.ttf,%
    BoldFont=THSarabunNew Bold.ttf,%
    BoldItalicFont=THSarabunNew BoldItalic.ttf%
]{THSarabunNew.ttf}
\XeTeXlinebreaklocale "th"
\XeTeXlinebreakskip = 0pt plus 1 pt
%\usepackage{newtxtext}
\usepackage{newtxmath}
\def\thaialph#1{\expandafter\thalph\csname c@#1\endcsname}
\def\thalph#1{%
	\ifcase#1\or ก\or ข\or ค\or ง\or จ\or ฉ\or ช\or ซ\or
	ฌ\or ญ\or ฎ\or ฏ\or ฐ\or ฑ\or ฒ\or ณ\or ด\or ต\or ถ\or ท\or ธ\or น\or
	บ\or ป\or ผ\or ฝ\or พ\or ฟ\or ภ\or ม\or ย\or ร\or ฤ\or ล\or ฦ\or ว\or
	ศ\or ษ\or ส\or ห\or ฬ\or อ\else ฮ\else\xpg@ill@value{#1}{thalph}\fi}

% LONGTABLE ===========================================
\usepackage{longtable}

% GRAPHIC ==============================================
\usepackage{graphicx}

% CAPTION FOR TABLES AND FIGURES ==========================
\usepackage[
singlelinecheck=false,
labelsep=space
]{caption}
\renewcommand{\figurename}{ภาพที่}
\renewcommand{\tablename}{ตารางที่}


% MORE TABLES AND FIGURES ================================
\usepackage{morefloats}


% BLOCK QUOTATION =====================================
\newenvironment{blockquote}{\begin{adjustwidth}{0.8in}{0in}\setlength{\parindent}{0.3in}}{\end{adjustwidth}}


% URL =================================================
\usepackage{url}


% FOOTNOTE ============================================
\footmarkstyle{\hspace{\parindent}\textsuperscript{#1}}    
\setlength{\footmarkwidth}{0em}
\setlength{\footmarksep}{0em}
\setlength{\footnotesep}{14pt}
\setlength{\footparindent}{0.5in}
\renewcommand{\foottextfont}{\fontsize{12pt}{20pt}\selectfont}


% INFO COMMAND ========================================
% thesis title ---------------------------------------------------------------------------------
\newcommand{\thesistitleThai}[1]{\def\@thesistitleThai{#1}} % cover, title page, approval page in thai
\newcommand{\thesistitle}[1]{\def\@thesistitle{#1}} % title page in english
\newcommand{\thesistitleforabstractThai}[1]{\def\@thesistitleforabstractThai{#1}} % abstract page in thai
\newcommand{\thesistitleforabstract}[1]{\def\@thesistitleforabstract{#1}} % abstract page in english
% author's info ------------------------------------------------------------------------------
\newcommand{\nametitle}[1]{\def\@nametitle{#1}}
\newcommand{\authorThai}[1]{\def\@authorThai{#1}}
\newcommand{\dateofbirth}[1]{\def\@dateofbirth{#1}}
\newcommand{\workposition}[1]{\def\@workposition{#1}}
\newcommand{\eduattainment}[1]{\def\@eduattainment{#1}}
\newcommand{\scholarship}[1]{\def\@scholarship{#1}}
\newcommand{\workexperiences}[1]{\def\@workexperiences{#1}}
\newcommand{\degreeThai}[1]{\def\@degreeThai{#1}}
\newcommand{\degree}[1]{\def\@degree{#1}}
\newcommand{\majorThai}[1]{\def\@majorThai{#1}}
\newcommand{\major}[1]{\def\@major{#1}}
\newcommand{\departmentThai}[1]{\def\@departmentThai{#1}}
\newcommand{\department}[1]{\def\@department{#1}}
\newcommand{\facultyThai}[1]{\def\@facultyThai{#1}}
\newcommand{\faculty}[1]{\def\@faculty{#1}}
% thesis's info -------------------------------------------------------------------------------
\newcommand{\academicyear}[1]{\year=#1}
\newcommand{\approvaldate}[1]{\def\@approvaldate{#1}}
\newcommand{\typeofwritingThai}[1]{\def\@typeofwritingThai{#1}}
\newcommand{\typeofwriting}[1]{\def\@typeofwriting{#1}}
\def\IndStudy{Independent Study}
\def\Thesis{Thesis}
\def\Dissertation{Dissertation}

% research subject name -------------------------------------------------------
\newcommand{\researchsubjectThai}[1]{\def\@researchsubjectThai{#1}}
\newcommand{\researchsubject}[1]{\def\@researchsubject{#1}}

% thesis advisory and examination committees ----------------------------------
\newcommand{\advisorThai}[1]{\def\@advisorThai{#1}}
\newcommand{\advisor}[1]{\def\@advisor{#1}}
\newcommand{\coadvisorThai}[1]{\def\@coadvisorThai{#1}}
\newcommand{\coadvisor}[1]{\def\@coadvisor{#1}}
\newcommand{\chairman}[1]{\def\@chairman{#1}}
\newcommand{\memberone}[1]{\def\@memberone{#1}}
\newcommand{\membertwo}[1]{\def\@membertwo{#1}}
\newcommand{\dean}[1]{\def\@dean{#1}}
\newcommand{\chairmandegree}[1]{\def\@chairmandegree{#1}}
\newcommand{\advisordegree}[1]{\def\@advisordegree{#1}}
\newcommand{\coadvisordegree}[1]{\def\@coadvisordegree{#1}}
\newcommand{\memberonedegree}[1]{\def\@memberonedegree{#1}}
\newcommand{\membertwodegree}[1]{\def\@membertwodegree{#1}}
\newcommand{\deandegree}[1]{\def\@deandegree{#1}}

% COLLECT INFO =========================================
\usepackage{collect}
\definecollection{abstractThai}
\definecollection{abstract}
\definecollection{acknowledgements}
\definecollection{publications}

% ABSTRACT AND KEYWORDS ================================
\makeatletter
\newcommand{\keywordsThai}[1]{\def\@keywordsThai{#1}}
\newenvironment{abstractThai}
{\@nameuse{collect}{abstractThai}{\addtocontents{toc}{\hfill หน้า\par\vspace{-23pt}}\addcontentsline{toc}{chapter}{บทคัดย่อภาษาไทย}\par\vspace{\baselineskip}{\centering\fontsize{14}{16.1}\bfseries\expandafter\uppercase\expandafter{บทคัดย่อ}\par}\vspace{\baselineskip}}{\par\vspace{\baselineskip}\noindent\textbf{คำสำคัญ:} \@keywordsThai}{}{}}
{\@nameuse{endcollect}}

\newcommand{\keywords}[1]{\def\@keywords{#1}}
\renewenvironment{abstract}
{\@nameuse{collect}{abstract}{\addcontentsline{toc}{chapter}{บทคัดย่อภาษาอังกฤษ}\par\vspace{\baselineskip}{\centering\fontsize{14}{16.1}\bfseries\expandafter\uppercase\expandafter{\abstractname}\par}\vspace{\baselineskip}}{\par\vspace{\baselineskip}\noindent\textbf{Keywords:} \@keywords}{}{}}
{\@nameuse{endcollect}}

% ACKNOWLEDGEMENTS ===================================
\newenvironment{acknowledgements}
{\@nameuse{collect}{acknowledgements}{\addcontentsline{toc}{chapter}{กิตติกรรมประกาศ}\par\vspace{\baselineskip}{\centering\fontsize{14}{16.1}\bfseries กิตติกรรมประกาศ \par}\vspace{1.2\baselineskip}}{\par\vspace{2\baselineskip}\ \hfill\@authorThai}{}{}}
{\@nameuse{endcollect}}


% PUBLICATIONS =========================================
\newenvironment{publications}
{\@nameuse{collect}{publications}{\noindent}{}{}{}}
{\@nameuse{endcollect}}
\makeatother




% TOC LOT LOF STYLE ====================================
\usepackage{titletoc}

% TABLE OF CONTENTS ====================================
\renewcommand{\contentsname}{สารบัญ}
\renewcommand{\tocheadstart}{}
\renewcommand{\aftertoctitle}{\\~\\\thispagestyle{topright}}
\renewcommand{\printtoctitle}
{\bfseries\large\centering\expandafter\MakeUppercase}

% contents style for chapter --------------------------
\titlecontents{chapter}
[0pt]% left margin
{\addvspace{23pt}}% above code (e.g vertical space)
{\contentsmargin{0pt}\contentspush{%
		\MakeUppercase\chaptername~\thecontentslabel~}\MakeUppercase}% numbered entry format
{\contentsmargin{0pt}\MakeUppercase}% unnumbered entry format
{\titlerule*[0pc]{.}\contentspage}% filler-page format (e.g dots)
[\addvspace{0pt}]% below code (e.g vertical space)

% contents style for section -------------------------
\titlecontents{section}
[0.5in]% left margin
{\addvspace{0pt}}% above code (e.g vertical space)
{\contentsmargin{0cm}\contentspush{%
		\thecontentslabel~}}% numbered entry format
{\contentsmargin{16pt}}% unnumbered entry format
{\titlerule*[0pc]{.}\contentspage}% filler-page format (e.g dots)
[\addvspace{0pt}]% below code (e.g vertical space)

% contents style for subsection -------------------------
\titlecontents{subsection}
[0.7in]% left margin
{\addvspace{0pt}}% above code (e.g vertical space)
{\contentsmargin{0cm}\contentspush{%
		\thecontentslabel~}}% numbered entry format
{\contentsmargin{16pt}}% unnumbered entry format
{\titlerule*[0pc]{.}\contentspage}% filler-page format (e.g dots)
[\addvspace{0pt}]% below code (e.g vertical space)

% contents style for subsubsection -------------------------
\titlecontents{subsubsection}
[1in]% left margin
{\addvspace{0pt}}% above code (e.g vertical space)
{\contentsmargin{0cm}\contentspush{%
		\thecontentslabel~}}% numbered entry format
{\contentsmargin{16pt}}% unnumbered entry format
{\titlerule*[0pc]{.}\contentspage}% filler-page format (e.g dots)
[\addvspace{0pt}]% below code (e.g vertical space)

% contents style for paragraph -------------------------
\titlecontents{paragraph}
[1.4in]% left margin
{\addvspace{0pt}}% above code (e.g vertical space)
{\contentsmargin{0cm}\contentspush{%
		\thecontentslabel~}}% numbered entry format
{\contentsmargin{16pt}}% unnumbered entry format
{\titlerule*[0pc]{.}\contentspage}% filler-page format (e.g dots)
[\addvspace{0pt}]% below code (e.g vertical space)

% contents style for appendix ------------------------
\makeatletter
\let\ttll@appendix\ttll@chapter
\renewcommand{\appendixname}{ภาคผนวก}
\titlecontents{appendix}
[1cm]% left margin
{\addvspace{0pt}}% above code (e.g vertical space)
{\contentsmargin{0cm}\MakeUppercase\appendixname~\thecontentslabel}% numbered entry format
{\contentsmargin{16pt}}% unnumbered entry format
{\titlerule*[0pc]{.}\contentspage}% filler-page format (e.g dots)
[\addvspace{0pt}]% below code (e.g vertical space)
\makeatother

% more vertical space in toc -----------------------------------------------------------
\usepackage{etoolbox}
\preto\section{\ifnum\arabic{section}=0\addtocontents{toc}{\vspace{23pt}}\fi}
\makeatletter
\patchcmd{\@part}{\midpartskip}{\hspace{0.5em}}{}{}
\patchcmd{\@part}{\addcontentsline{toc}{part}{\protect\partnumberline{\thepart}\f@rtoc}}
{\addtocontents{toc}{{\ \par\protect\centering\MakeUppercase\partname\ \thepart\ \expandafter\uppercase\expandafter{\f@rtoc}\par}}}{}{}
\makeatother


% LIST OF TABLES ========================================
\let\oldlistoftables\listoftables
\renewcommand{\listoftables}{\cleardoublepage\newpage\addcontentsline{toc}{chapter}{\listtablename}\oldlistoftables*}
\renewcommand{\listtablename}{สารบัญตาราง}
\renewcommand{\lotheadstart}{}
\renewcommand{\printlottitle}{
	\addtocontents{lot}{\noindent ตารางที่\hfill หน้า\par}
	\bfseries\large\centering\expandafter\MakeUppercase}
\renewcommand{\afterlottitle}{\\~\\\thispagestyle{topright}}
\renewcommand\chapternumberline[1]{\numberline{#1}}

% tables line ----------------------------
\titlecontents{table}
[16pt]% left margin
{\addvspace{0cm}}% above code (e.g vertical space)
{\contentsmargin{0pt}\contentspush{%
		\thecontentslabel~}}% numbered entry format
{\contentsmargin{0pt}}% unnumbered entry format
{\titlerule*[0pc]{.}\contentspage}% filler-page format (e.g dots)
[\addvspace{0pc}]% below code (e.g vertical space)


% LIST OF FIGURES =======================================
\let\oldlistoffigures\listoffigures
\renewcommand{\listoffigures}{\cleardoublepage\newpage\addcontentsline{toc}{chapter}{\listfigurename}\oldlistoffigures*}
\renewcommand{\listfigurename}{สารบัญภาพ}
\renewcommand{\lofheadstart}{}
\renewcommand{\printloftitle}{
	\addtocontents{lof}{\noindent ภาพที่\hfill หน้า\par}
	\bfseries\large\centering\expandafter\MakeUppercase}
\renewcommand{\afterloftitle}{\\~\\\thispagestyle{topright}}

% figure line ----------------------------
\titlecontents{figure}
[16pt]% left margin
{\addvspace{0cm}}% above code (e.g vertical space)
{\contentsmargin{0pt}\contentspush{%
		\thecontentslabel~}}% numbered entry format
{\contentsmargin{0pt}}% unnumbered entry format
{\titlerule*[0pc]{.}\contentspage}% filler-page format (e.g dots)
[\addvspace{0pc}]% below code (e.g vertical space)


% REMOVE VERTICAL SPACE IN LOT AND LOF ====================
\renewcommand{\insertchapterspace}{}


% LIST OF ABBREVIATIONS ==================================
% LIST OF ABBREVIATIONS ==================================
\usepackage[intoc]{nomencl} % no refpage option
\renewcommand{\nomname}{รายการสัญลักษณ์และคำย่อ}
\makenomenclature
\newcommand{\listofabbreviations}{\printnomenclature[0.5\linewidth]\cleardoublepage}
\renewcommand\nomgroup[1]{%
	\item[\bfseries สัญญลักษณ์/คำย่อ]%
	\textbf{คำเต็ม/คำจำกัดความ}\vspace{23pt}
}
\let\oldnomenclature\nomenclature
\renewcommand{\nomenclature}[3][]{\oldnomenclature[1#1]{#2}{#3}}
\setlength{\nomitemsep}{-\parsep}



% HEADING =============================================
% Chapter ---------------------------------------------
\renewcommand{\chaptername}{บทที่}
\renewcommand{\printchaptername}{%
	\large\bfseries\MakeUppercase\chaptername}
\renewcommand{\printchapternum}{%
	\large\thechapter\centering}
\renewcommand{\printchaptertitle}{\thispagestyle{topright}
	\bfseries\large\centering\expandafter\uppercase\expandafter} % Capital Letters for chaptertitle
\setlength{\beforechapskip}{-26pt}
\setlength{\afterchapskip}{23pt}
\setlength{\midchapskip}{0pt}


% part ---------------------------------------------
\makeatletter
\renewcommand{\partname}{ภาคที่}
\renewcommand{\printpartname}{\fontsize{16}{18.4}\selectfont\bfseries\MakeUppercase\partname}
\renewcommand{\thepart}{\arabic{part}}
\renewcommand{\printpartnum}{\if@twoside\addtocounter{page}{-2}\else\addtocounter{page}{-1}\fi\thispagestyle{empty}\fontsize{16}{18.4}\selectfont\thepart}
\renewcommand{\printparttitle}{\fontsize{16}{18.4}\selectfont\bfseries\expandafter\uppercase\expandafter}
\makeatother


% section, subsection, subsubsection and paragraph ------------------------------
\setsecnumdepth{paragraph} % show numbers
\settocdepth{paragraph}
\usepackage{titlesec}
\titleformat{\section}
{\bfseries}{\thesection}{0.5em}{}
\titleformat{\subsection}
{\bfseries}{\thesubsection}{0.5em}{}
\titleformat{\subsubsection}
{\bfseries}{\thesubsubsection}{0.5em}{}
\titleformat{\paragraph}
{\bfseries}{\theparagraph}{0.5em}{}
\renewcommand{\theparagraph}{(\arabic{paragraph})}

% indent from left margin -----------------------------------
\titlespacing*{\section}{0pt}{\baselineskip}{\baselineskip}
\titlespacing*{\subsection}{0.8in}{\baselineskip}{*0}
\titlespacing*{\subsubsection}{1.1in}{*0}{*0}
\titlespacing*{\paragraph}{1.4in}{*0}{*0}


% ADDTIONAL PARAGRAPH INDENTATION =======================
% measure label length -----------------------------
\newlength{\sublabellength}
\newlength{\subsublabellength}
\newlength{\parlabellength}

% addtional command for indentation ----------------------
\newcommand{\subsectionindent}{%
	\settowidth{\sublabellength}{\thesubsection}%
	\hspace{\the\sublabellength}\hspace{0.6em}}
% ---------------------------
\newcommand{\subsubsectionindent}{%
	\settowidth{\subsublabellength}{\thesubsubsection}%
	\hspace{\the\subsublabellength}\hspace{0.3in}\hspace{0.6em}}
% ---------------------------
\newcommand{\paragraphindent}{
	\settowidth{\parlabellength}{\theparagraph}%
	\hspace{\the\parlabellength}\hspace{0.6in}\hspace{0.6em}}



% APPENDIX SECTION =====================================
\let\oldchapter\chapter % use \oldchapter instead of \chapter in biography
\makeatletter
\let\Appendix\appendix
\renewcommand{\appendix}[1][sub]{\def\subappendixchecking{#1}\def\nosub{nosub}\cleardoublepage\newpage\thispagestyle{empty}\if@twoside\addtocounter{page}{-2}\else\addtocounter{page}{-1}\fi
	\ \vfill \begin{center}
		\bfseries\fontsize{14}{16.1}\selectfont \MakeUppercase\appendixname % appendix intro page
	\end{center} \vfill \
	\Appendix
	\ifx\subappendixchecking\nosub 
		\addtocounter{page}{1}\addcontentsline{toc}{chapter}{\appendixname}\cleardoublepage\newpage\addtocounter{page}{-1}
	\else
		\addtocontents{toc}{\vspace{23pt}\noindent \appendixname\par\vspace{23pt}}
	\fi
	\renewcommand{\chaptername}{\appendixname} % appendix chap name
		\renewcommand{\thechapter}{\thaialph{chapter}}
	\let\hidensection\section
	\renewcommand{\section}[1]{
		\stepcounter{section}
		\hidensection*{\thaialph{chapter}.\arabic{section}\hspace{0.5em}##1} % no sec in toc
	}
	\let\hidensubsection\subsection
	\renewcommand{\subsection}[1]{
		\stepcounter{subsection}
		\hidensubsection*{\thaialph{chapter}.\arabic{section}.\arabic{subsection}\hspace{0.5em}##1} % no subsec in toc
	}
	\let\hidensubsubsection\subsubsection
	\renewcommand{\subsubsection}[1]{
		\stepcounter{subsubsection}
		\hidensubsubsection*{\thaialph{chapter}.\arabic{section}.\arabic{subsection}.\arabic{subsubsection}\hspace{0.5em}##1} % no subsubsec in toc
	}
	\let\hidenparagraph\paragraph
	\renewcommand{\paragraph}[1]{
		\stepcounter{paragraph}
		\hidenparagraph*{(\arabic{paragraph})\hspace{0.5em}##1} % no paragraph in toc
	}
	\let\hidenchapter\chapter
	\renewcommand{\chapter}[1]{\hidenchapter[ ]{##1}} % no appendix title in toc
}

\makeatother




% COMMANDS FOR BIB STYLE DETECTION =======================
% use in MAIN.tex and CRUbibsetting.sty --------------------
\makeatletter
\def\bibvancouver{vancouver}
\def\bibapa{apa}
\def\bibturabian{turabian}
\newcommand{\bibmanual}[1]{\def\@bibmanual{#1}}
\newcommand{\bibauto}[1]{\def\@bibauto{#1}}
\makeatother


