%# -*- coding:utf-8 -*-
%\Needs TexFormat{LaTeX2e}[2016/04/01]
\ProvidesClass{paper}[2016/04/01 Template for XMU Master]
\LoadClass[cs4size,a4paper,UTF8]{ctexbook}

\RequirePackage{amsmath,amsthm,amsfonts,amssymb,bm}
\RequirePackage{ulem,graphicx}
\RequirePackage{titlesec,titletoc,scrextend}
\RequirePackage[titles]{tocloft}
\RequirePackage{fancyhdr}
%\RequirePackage[square,super,comma,sort,compress]{natbib}
%\RequirePackage[CJKbookmarks=true]{hyperref}
\RequirePackage{caption}
\RequirePackage[square,super,comma,sort,compress]{natbib}
\RequirePackage[colorlinks,linkcolor=black,anchorcolor=blue,citecolor=black,bookmarksnumbered=true,bookmarksopen=true]{hyperref}
\RequirePackage{afterpage}


\newcommand\idn[1]{\def\value@idn{#1}}  %学号
\newcommand\degree[1]{\def\value@degree{#1}}  %学位
\newcommand\entitle[1]{\def\value@entitle{#1}} %英文标题
\newcommand\pubdate[1]{\def\value@pubdate{#1}} %底部日期
\newcommand\teacher[1]{\def\value@teacher{#1}} %指导教师
\newcommand\subject[1]{\def\value@subject{#1}} %专业
\newcommand\subdate[1]{\def\value@subdate{#1}} %论文提交日期
\newcommand\defdate[1]{\def\value@defdate{#1}} %论文答辩日期
\newcommand\oftdate[1]{\def\value@oftdate{#1}} %学位授予日期


\newcommand{\s}{\hspace{\fill}} %分散对齐需要

\renewcommand\title[1]{\def\value@title{#1}} %论文标题
\renewcommand\author[1]{\def\value@author{#1}} %作者
\renewcommand\ULthickness{1pt} %设置下划线粗细
\renewcommand{\baselinestretch}{1.5} %设置行距

\newcommand\engdegree[1]{\def\value@engdegree{#1}}  %学位-英文
\newcommand\enauthor[1]{\def\value@enauthor{#1}} %作者-英文
\newcommand\enteacher[1]{\def\value@enteacher{#1}} %指导教师-英文
\newcommand\enschool[1]{\def\value@enschool{#1}} %学院-英文
\newcommand\enpubdate[1]{\def\value@enpubdate{#1}} %底部日期-英文

\setcounter{page}{3}
\newCJKfontfamily\kaiti{simkai.ttf}[AutoFakeBold]
\newCJKfontfamily\simhei{simhei.ttf}[AutoFakeBold]
\newCJKfontfamily\simsong{simsun.ttc}[AutoFakeBold]

\renewcommand{\songti}{\CJKfamily{simsong}} %宋体
\renewcommand{\heiti}{\CJKfamily{simhei}} %黑体
\renewcommand{\kaishu}{\CJKfamily{kaiti}} %楷体
%图表定义
\renewcommand{\figurename}{\bfseries\songti\zihao{-4}图}
\renewcommand{\tablename}{\bfseries \songti\zihao{-4}表}
\renewcommand{\thetable}{\thechapter-\arabic{table}}
\renewcommand{\theequation}{\thechapter-\arabic{equation}}

\captionsetup[figure]{textfont={bf}}
\captionsetup[table]{position=top,belowskip=2ex,textfont={bf}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%   定义脚注格式  %%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%\setlength{\footnotesep}{1cm}

\def\xmu@textcircled#1{
    \textcircled{\zihao{7}\arabic{#1}}}

\renewcommand\thefootnote{\xmu@textcircled{footnote}}
\renewcommand\thempfootnote{\xmu@textcircled{mpfootnote}} %mini page footnote
\renewcommand\footnotesize{\zihao{-5}}
\deffootnote[1em]{1em}{1em}{$^{\tiny\thefootnotemark\space}$}

%%%封面%%
\renewcommand\maketitle{
      \clearpage
      \thispagestyle{empty}
      \begin{flushleft}
      \bf\songti\zihao{-4}学校编码：10384 
      \vskip 3pt
      \bf\songti\zihao{-4}学\qquad 号：\value@idn 
      \end{flushleft}
      \vspace*{15pt}
      \begin{center}
      \includegraphics[width=145pt]{figures/xmu-logo.jpg}
      \vskip 18pt
      \bf\songti\zihao{2}\value@degree~~~~士~~~~学~~~~位~~~~论~~~~文
      \vskip 18pt
      \bf\heiti\zihao{-2}\value@title
      \vskip 10pt
      \bf\zihao{3}\value@entitle~
      \vskip 20pt
      \bf\kaishu\zihao{-2} ~\value@author~
      \vskip 20pt
      \mdseries\zihao{-3}
      \renewcommand\arraystretch{1.2}
      \begin{tabular}{rl}
        指\s 导\s 教\s 师\s 姓\s 名：&\value@teacher \\
        专\s 业\s 名\s 称：&\value@subject \\
        论文提交日期：&\value@subdate \\
        论文答辩日期：&\value@defdate \\
        学位授予日期：&\value@oftdate\\
      \end{tabular}
      \end{center}
      \vskip 120pt
      \begin{center}
      \bf\songti\zihao{4} \value@pubdate
      \end{center}
}
%%英文封面%%
\newcommand\makeencover{
      \clearpage
      \thispagestyle{empty}
      \vspace*{15pt}
      \begin{center}
      \includegraphics[width=128pt,height=128pt]{xmu_logo.png}
      \vskip 10pt
      \bf\zihao{3}\value@entitle~
      \vskip 5pt
      \mdseries\zihao{3}A Dissertation Submitted to the Graduate School
      in Partial Fulfillment of the Requirements for the Degree of \\ \value@engdegree
      \vskip 40pt
      \zihao{3}By \\ \value@enauthor
      \vskip 30pt
      \zihao{3}Supervised by \\ \value@enteacher
      \vskip 40pt
      \zihao{3} \value@enschool \\ Xiamen University
      \vskip 30pt
      \zihao{3} \value@enpubdate
      \end{center}
}

\newcommand\keywords[1]{\def\value@keywords{#1}}   %中文关键字
\newcommand\ekeywords[1]{\def\value@ekeywords{#1}} %英文关键字

%中文摘要
\newenvironment{cabstract}{%
    \pagestyle{plain}%
    \fancyfoot{}%
    \begin{center}%
       {\heiti\zihao{-3}\textbf{摘~~~~要}}%
    \end{center}
    \vspace{12bp}%
    \par%
}{%
    \par%
    \vspace{12bp}%
    \noindent%
    %{\heiti\zihao{-4} 关键词：}\quad{\xmu@keywords}%
    {\heiti\zihao{-4} \textbf{关键词：}}\value@keywords%
    %\addcontentsline{toc}{chapter}{摘要}  %加入目录
    % \clearpage%
    % \cleardoublepage
    \afterpage{\null\newpage}\clearpage
}

%英文摘要
\newenvironment{eabstract}{%
    \pagestyle{plain}%
    \fancyfoot{}%
    %\def\xmu@keywords{#1}%
    \begin{center}%
       {\zihao{-3}\textbf{Abstract}}%
    \end{center}
    \vspace{12bp}%
    \par%
}{%
    \par%
    \vspace{12bp}%
    \noindent%
    %{\heiti\zihao{-4} 关键词：}\quad{\xmu@keywords}%
    {\zihao{-4}\textbf{Key Words:~}}\value@ekeywords%
    %\addcontentsline{toe}{chapter}{Abstract}  %加入目录
    \clearpage%
    % \cleardoublepage
}
%章节样式｛Chapter、Section、Subsection｝
\renewcommand\chapter{
                    \clearpage%
                    \cleardoublepage
                    %\pagestyle{xmu@plain}%
                    \pagestyle{fancy} %
                    \fancyhead{} %
                    \fancyhead[CO]{\hfill\small\songti\nouppercase{\leftmark}\hfill}%
                    \fancyhead[CE]{\makebox[\textwidth][c]{\hfill\small\songti\value@title\hfill}}
                    \cfoot{\small\thepage} %
                    \global\@topnum\z@%
                    \secdef\@chapter\@schapter
                    }
\renewcommand\section{\@startsection {section}{1}{\z@}%
                       {1ex \@plus 1ex \@minus 0ex}%
                       {1.3ex}%
                       {\heiti\zihao{4}\bfseries}}
\renewcommand\subsection{\@startsection {subsection}{2}{\z@}%
                       {1ex \@plus 1ex \@minus 0ex}%
                       {1.3ex}%
                       {\heiti\zihao{-4}\bfseries}}
\renewcommand\subsubsection{\@startsection {subsubsection}{3}{\z@}%
                       {1ex \@plus 1ex \@minus 0ex}%
                       {1.3ex}%
                       {\heiti\zihao{-4}\bfseries}}

%调整章节标题编号和标题的距离
\renewcommand\@seccntformat[1]{\csname the#1\endcsname\hspace{0.5em}}

%中文目录
\newcommand\ntableofcontents{%
  \textbf{\contentsname}\vspace{3ex} %\bf 全部加粗了
  \normalsize\@starttoc{toc}
}
\newcommand\tableofcncontents{\tableofcontents\pagestyle{xmu@jwguan}}
\renewcommand\contentsname{目~~~~录}

\def\@dotsep{0.75} %目录点间的距离
\def\@tocrmarg{2em}
\def\@dottedtocline#1#2#3#4#5{%
  \ifnum #1>\c@tocdepth \else
    \vskip \z@ \@plus.2\p@
    {\leftskip #2\relax \rightskip \@tocrmarg \parfillskip -\rightskip
    \parindent #2\relax\@afterindenttrue
    \interlinepenalty\@M
    \leavevmode
    \@tempdima #3\relax
    \advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
    {\songti\zihao{-4}\csname \endcsname #4}\nobreak
    \leaders\hbox{$\m@th\mkern \@dotsep mu\hbox{.}\mkern \@dotsep mu$}\hfill %
    \nobreak{\normalfont \normalcolor #5}%
    \par}%
  \fi}

\renewcommand\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 4bp \@plus\p@
    \setlength\@tempdima{4em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      {\bf\heiti\zihao{4}\csname\endcsname #1} % numberline is called here, and it uses \@tempdima
      \bf\leaders\hbox{$\m@th\mkern \@dotsep mu\hbox{.}\mkern \@dotsep  mu$}\hfill
      \nobreak{\normalfont\normalcolor \bf#2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}
%\renewcommand*\l@chapter[2]{
%    \vskip 4bp \@plus\p@
%    \begingroup
%      \parindent \z@ \rightskip \@pnumwidth
%      \parfillskip -\@pnumwidth
%      \@tempdima 4em\relax
%      \hskip -\leftskip
%      {\bf\heiti\zihao{4}\csname \endcsname #1 } % numberline is called here, and it uses \@tempdima
%      \bf\leaders\hbox{$\m@th\mkern \@dotsep mu\hbox{.}\mkern \@dotsep  mu$}\hfill
%      \nobreak{\normalfont\normalcolor \bf #2}\par
%      \penalty\@highpenalty
%    \endgroup
%}

\renewcommand*\l@section[2]{
    \vskip 4bp \@plus\p@
    \begingroup
      \parindent 1.5em \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \@tempdima 1.8em\relax
      \hskip -\leftskip
      {\bf\heiti\zihao{-4}\csname \endcsname #1 } % numberline is called here, and it uses \@tempdima
      \bf\leaders\hbox{$\m@th\mkern \@dotsep mu\hbox{.}\mkern \@dotsep  mu$}\hfill
      \nobreak{\normalfont\normalcolor \bf #2}\par
      \penalty\@highpenalty
    \endgroup
}

\renewcommand*\l@subsection[2]{
    \vskip 4bp \@plus\p@
    \begingroup
      \parindent 3em \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \@tempdima 2.5em\relax
      \hskip -\leftskip
      {\songti\zihao{-4}\csname \endcsname #1 } % numberline is called here, and it uses \@tempdima
      \leaders\hbox{$\m@th\mkern \@dotsep mu\hbox{.}\mkern \@dotsep  mu$}\hfill
      \nobreak{\normalfont\normalcolor #2}\par
      \penalty\@highpenalty
    \endgroup
}

%英文目录
\newcommand\tableofengcontents{
\clearpage%
\cleardoublepage
    \pagestyle{xmu@jwguan} %设置中文目录页眉
    %\fancyhead[C]{\hfill\small\songti\leftmark\hfill}
    \if@twocolumn \@restonecoltrue \oneclumn
    \else \@restonecolfalse
    \fi
    \chapter*{\engcontentsname
              \@mkboth{\MakeUppercase\engcontentsname}{\MakeUppercase\engcontentsname}%
              }%

    \@starttoc{toe} % 生成英文目录
    \if@restonecol\twocolumn\fi
     \pagestyle{xmu@jwguan} %设置英文目录页眉
% \clearpage%
% \cleardoublepage
\afterpage{\null\newpage}\clearpage
}
\newcommand\engcontentsname{Contents}

\newcommand\echapter[1]{
    \addcontentsline{toe}{chapter}{
        \protect\numberline{Chapter~\thechapter}#1
    }
}
\newcommand\esection[1]{\addengcontents{section}{#1}}
\newcommand\esubsection[1]{\addengcontents{subsection}{#1}}
\newcommand\addengcontents[2]{
    \addcontentsline{toe}{#1}{
     \protect\numberline{\csname the#1\endcsname}#2
    }
}
\titlecontents{chapter}[0pt]{\heiti \zihao{4}}
    {\bfseries\thecontentslabel~}{\bfseries}
    {\bfseries\titlerule*{.}\contentspage}
\titlecontents{section}[1\ccwd]{\heiti \zihao{-4}}
    {\bfseries\thecontentslabel~}{\bfseries}
    {\bfseries\titlerule*{.}\contentspage}
\titlecontents{subsection}[2\ccwd]{\songti \zihao{-4}}
    {\thecontentslabel~}{}
    {\titlerule*{.}\contentspage}

%定义新的pagestyle
\def\ps@xmu@empty{%
  \let\@oddhead\@empty%
  \let\@evenhead\@empty%
  \def\@oddfoot{\hfill\small\thepage\hfill}%
  \let\@evenfoot=\@oddfoot
}

\def\ps@xmu@plain{%
  \let\@oddhead\@empty%
  \let\@evenhead\@empty%
  \def\@oddhead{
       \vbox{
       \hb@xt@\textwidth{\hfill\small\value@title\hfill} %
       \vskip5pt
       \hbox{\vrule width\textwidth height0.4pt depth0pt}
        }
        }
  \def\@evenhead{
       \vbox{
       \hb@xt@\textwidth{\hfill\small\leftmark\hfill}
       \vskip5pt
       \hbox{\vrule width\textwidth height0.4pt depth0pt}
       }
       %\hbox{\vrule width\textwidth height0.4pt depth0pt}
       }

  \def\@oddfoot{\hfill\small\thepage\hfill}%
  \let\@evenfoot=\@oddfoot
  }

\def\ps@xmu@jwguan{%
  \let\@oddhead\@empty%
  \let\@evenhead\@empty%
  \def\@oddhead{
       \vbox{
       \hb@xt@\textwidth{\hfill\small\leftmark\hfill}
       \vskip5pt
       \hbox{\vrule width\textwidth height0.4pt depth0pt}
       }
       %\hbox{\vrule width\textwidth height0.4pt depth0pt}
       }
  \def\@evenhead{
       \vbox{
       \hb@xt@\textwidth{\hfill\small\value@title\hfill} %
       \vskip5pt
       \hbox{\vrule width\textwidth height0.4pt depth0pt}
        }
        }

  \def\@oddfoot{\hfill\small\thepage\hfill}%
  \let\@evenfoot=\@oddfoot
  }

\def\ps@xmu@headings{%
  \def\@oddhead{\vbox to\headheight{%
      \hb@xt@\textwidth{\hfill\small\songti\leftmark\hfill}%
      \vskip2pt\hbox{\vrule width\textwidth height0.4pt depth0pt}}}
  \def\@evenhead{\vbox to\headheight{%
      \hb@xt@\textwidth{\small\songti%
      \value@title%
      \hfill\leftmark\fi\hfill}%
      \vskip2pt\hbox{\vrule width\textwidth height0.4pt depth0pt}}}
  \def\@oddfoot{\hfil\small\thepage\hfil}
  \let\@evenfoot=\@oddfoot}

%%相关学术成果%%
\newenvironment{publications}{%
   \chapter*{在学期间完成的相关学术成果}
   \pagestyle{fancy} %
   \fancyhead{} %
   \fancyhead[CO]{\hfill\small\songti{在学期间完成的相关学术成果}\hfill}%
   \fancyhead[CE]{\makebox[\textwidth][c]{\hfill\small\songti\value@title\hfill}}
   \setlength{\parindent}{0pt}
   %\begin{center}%
%     \vspace*{0.5em}
%     {\heiti\zihao{-3}\textbf{攻读硕士研究生期间发表的学术论文}}%
%   \end{center}
%   \vspace{1em}%


}{%

    \addcontentsline{toc}{chapter}{在学期间完成的相关学术成果}
    \addcontentsline{toe}{chapter}{Relevant Academic Achievements Completed During the Academic Period }
    \clearpage%

}
%参考文献格式
\renewcommand\bibname{参考文献}
\newcommand{\ucite}[1]{$^{\mbox{\scriptsize \cite{#1}}}$}
\let\ucite\cite
\newenvironment{xmuref}{%
    %\thispagestyle{plain}%
   % \fancyfoot{}%
    %\def\xmu@keywords{#1}%
    %\pagestyle{fancy} %
%    \fancyhead{} %
%    \fancyhead[CO]{\hfill\small\songti{参考文献}\hfill}%
%    \fancyhead[CE]{\makebox[\textwidth][c]{\hfill\small\songti\value@title\hfill}}
%
%    \begin{center}%
%      \vspace*{0.5em}
%       {\heiti\zihao{-3}\textbf{致~~~~谢}}%
%    \end{center}
%    \vspace{1em}%
%    \par%
     \zihao{5}
     \setlength{\bibsep}{0.5ex}

}{%
    \par%
    \addcontentsline{toc}{chapter}{参考文献}
    \addcontentsline{toe}{chapter}{References}
    \clearpage%

}

%%%致谢%%
\newenvironment{ack}{%
    %\thispagestyle{plain}%
   % \fancyfoot{}%
    %\def\xmu@keywords{#1}%
    \chapter*{致~~~~谢}
    \pagestyle{fancy} %
    \fancyhead{} %
    \fancyhead[CO]{\hfill\small\songti{致~~~~谢}\hfill}%
    \fancyhead[CE]{\makebox[\textwidth][c]{\hfill\small\songti\value@title\hfill}}

    %\begin{center}%
%      \vspace*{0.5em}
%       {\heiti\zihao{-3}\textbf{致~~~~谢}}%
%    \end{center}
%    \vspace{1em}%

}{%
    \par%
    \addcontentsline{toc}{chapter}{致谢}
    \addcontentsline{toe}{chapter}{Acknowledgements}
    \clearpage%

}
 %%%附录%%
\newenvironment{apdix}{
    \renewcommand{\tablename}{\bfseries \songti\zihao{-4}附表}
    \renewcommand{\thetable}{\arabic{table}}
    \setcounter{table}{0}%
    \chapter*{附~~~~录}
    \pagestyle{fancy} %
    \fancyhead{} %
    \fancyhead[CO]{\hfill\small\songti{附~~~~录}\hfill}%
    \fancyhead[CE]{\makebox[\textwidth][c]{\hfill\small\songti\value@title\hfill}}
    \addcontentsline{toc}{chapter}{附录}
    \addcontentsline{toe}{chapter}{Appendix}
}{
    \par%
    \clearpage%
}

%\makeatother

\endinput
