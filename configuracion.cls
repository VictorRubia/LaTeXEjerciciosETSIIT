\LoadClass[a4paper,12pt]{article} % Clase de documento

%--------------------- Packages ------------------------

\RequirePackage[spanish]{babel} %Lenguaje del documento
\RequirePackage[utf8]{inputenc} %Carácteres especiales
\RequirePackage[section]{placeins}%Para la colocación de la sección
\RequirePackage[T1]{fontenc} %Algunas letras que no se incluyen en UTF-8
\RequirePackage{mathtools} %Paquete de ecuaciones y símbolos matemáticos
\RequirePackage{siunitx} %Para escribir con notación científica (por ejemplo, \num{2e+9})
\RequirePackage{float} %Para la colocación de imágenes
\RequirePackage{graphicx} %Paquete para insertar imágenes
\RequirePackage[justification=centering]{caption} %Para los subtítulos centralizados
\RequirePackage{subcaption}
\RequirePackage{wallpaper}
\RequirePackage{nomencl}
%\makenomenclature
\RequirePackage{fancyhdr}
%\pagestyle{fancy}
%\fancyheadoffset{1cm}
%\setlength{\headheight}{2cm}
\RequirePackage{url}
\RequirePackage[hidelinks]{hyperref}%Paquete para insertar leyendas en subfiguras como la Figura 1a, 1b
\RequirePackage[left=2.5cm,right=2.5cm,top=2cm,bottom=3.5cm]{geometry} %Configuración de la página

\usepackage[numbib,notlof,notlot,nottoc]{tocbibind}
\usepackage{url}
\usepackage{pdfpages}
\usepackage{apacite}
\usepackage[
    left = \flqq{},% 
    right = \frqq{},% 
    leftsub = \flq{},% 
    rightsub = \frq{} %
]{dirtytalk}

\usepackage{enumitem}
\newenvironment{QandA}{\begin{enumerate}[label=\bfseries\arabic*.]\bfseries}
                      {\end{enumerate}}
\newenvironment{answered}{\par\normalfont}{}

%-------------------- Información sobre el informe ----------------------

\newcommand{\UE}[1]{\renewcommand{\UE}{#1}}
\newcommand{\tema}[1]{\renewcommand{\tema}{#1}}
\newcommand{\titulo}[1]{\renewcommand{\titulo}{#1}}
\newcommand{\profesor}[1]{\renewcommand{\profesor}{#1}}
\newcommand{\estudiantes}[1]{\renewcommand{\estudiantes}{#1}}
\newcommand{\piepagina}[1]{\renewcommand{\piepagina}{#1}}
\addto{\captionsspanish}{\renewcommand{\refname}{Bibliografía}}

\newcommand{\crearlogos}{
\makenomenclature
\pagestyle{fancy}
\fancyheadoffset{1cm}
\setlength{\headheight}{2cm}
\lhead{\includegraphics[scale=0.08]{logos/ETSIIT_LOGO.jpg}} %Visualización de la imagen en la parte superior de la página
\rhead{\nouppercase{\leftmark}}
\rfoot{\thepage}
\cfoot{\piepagina - \textbf{\titulo}}
\lfoot{\UE}
}

\newcommand{\crearportada}{
\begin{titlepage}

\ThisLRCornerWallPaper{0.6}{logos/ugr_marca_agua.png}
	\centering %Centralizar los contenidos
	\includegraphics[width=0.3\textwidth]{logos/Logo_UGR.jpg}\par\vspace{1cm} %Inserción del logotipo
	{\scshape\LARGE Máster Universitario en Ingeniería Informática\par} %Nombre de la universidad
	\vspace{1.5cm}%Espacio de 1,5cm
	{\scshape\Large \UE \\ \tema \par} %subtítulo
	\vspace{1cm}%Espacio de 1cm
    \rule{\linewidth}{0.2 mm} \\[0.4 cm]
	{\huge\bfseries \titulo \par} \
    \rule{\linewidth}{0.2 mm} \\[1.5 cm]
	\vspace{1cm}%Espacio de 3cm
    
	\begin{minipage}{0.5\textwidth} %Minipágina para hacer dos columnas
		\begin{flushleft} \large %Enviar a la izquierda
		\emph{\textbf{Alumnos :}}\\ %Para el título sobre los nombres de la izquierda
        \estudiantes\\ %Sustituir por cada
		\end{flushleft}
	\end{minipage}
	~
	\begin{minipage}{0.4\textwidth}
		\begin{flushright} \large
		\emph{\textbf{Profesor :}} \\
		 \profesor \\
		\end{flushright}
	\end{minipage}\\[4cm]
    
	\vfill
	{\large \today\par} %Visualización de la fecha

\end{titlepage}
}

\newcommand{\crearindice}{
\tableofcontents
\newpage
}

\newcommand{\insererfigure}[4]{
\begin{figure}[ht]
\centering
\includegraphics[height=#2]{#1}
\caption{#3}
\label{fig: #4}
\end{figure}
}

\renewcommand\refname{Reference}
