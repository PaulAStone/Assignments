#Assignments: Weekly Handouts and Exercises for Quantitative Biodiversity

**Contributors**: Jay Lennon, Ken Locey, & Mario Muscarella

**Funding**: Development of Indiana University's first Quantitative Biodiversity class, including the materials in this repository, were supported by a National Science Foundation Dimensions of Biodiversity grant (#1442246) awarded to Dr.'s Jay Lennon and Ken Locey of Indiana University (Bloomington): http://www.nsf.gov/awardsearch/showAward?AWD_ID=1442246&HistoricalAwards=false

### REQUIRED SOFTWARE
R version 3.1.2  
RStudio Version 0.98.1062 or higher  
git version 1.9.3 or higher

**Windows specific:**  
LaTeX: MiKTEX, http://miktex.org/download   
Git: GitBash, unix-style terminal window, may install with Git

**Mac specific:**   
LaTeX: MacTeX or BasicTeX https://tug.org/mactex/morepackages.html

**NOTE**: GitHub for Mac and Windows can also be used, but were not used as part of the 2015 course.

##WEEKLY LESSONS
The 2015 Quantitative Biodiversity class consisted of eight classes, each with its own focus. The contents of the course materials are presented here, in the order the classes were taught.

##Week 1: Introduction 
In week 1, we introduced students to Git and GitHub, and explained the general work flow for the class. 
We had students fork the class repository to their own IU-Enterprise GitHub account, and then clone that repository onto their classroom desktop.

### CONTENTS
* **Course Goals:** Computer Setup; Intro to Git. This can be completed once weeks 1 and 2 are split

##Week 2: R Workshop
In week 2, we introduced students program R and the R Studio development environment. Students completed basic calculations, statistics, and data manipulation.

### CONTENTS
* **To be added:** This can be completed once weeks 1 and 2 are split

##Alpha: Within-site diversity
The third week focused on aspects of alpha-diversity, i.e., diversity within a site. Students were introduced to the site-by-species matrix as a primary ecological data structure. They estimated coverage, richness, evenness, and diversity, and conducted rarefaction and species abundance distribution analyses. Students worked with the vegan package and the BCI data within vegan, as well as soil bacteria data.

### CONTENTS
* **data:** Contains a file of site-by-OTU data for soil bacteria, i.e., soilbac.txt
	
* **alpha_exercise.Rmd:** An R Markdown document to be distributed to student repositories; includes the in-class assignment and homework. Knitting generates a .pdf of their work.
	
* **alpha_exercise.pdf:** Output of alpha_exercise.Rmd
	
* **alpha_handout.Rmd:** Generates a handout that was given to students to guide them through the in-class assignment and provides example code.
	
* **alpha_handout.pdf:** Provides students with information and example code for exploring alpha diversity
	
* **alpha_supplementary.Rmd:** Contains code that could be made available to students or included into the exercise

##Beta: Diversity among sites
The fourth week focused on aspects of beta-diversity, i.e., heterogeneity or turnover in diversity across sites. This work focuses heavily on multivariate ordination-based approaches using pair-wise site by site similarity/dissimilarity estimates. Students were introduced to (packages, tools) and used data from ...

### CONTENTS
* **data:** folder containing files of ... data
	* *bci.soil.txt* : Environmental data for Barro-Colorado Island (BCI), obtained from (???)
	
	* *soil.factors.txt* :  
	
	* *soilbac.RData* :
	
	* *soilbac.list.txt* :
	
	* *soilbacfull.txt* :

* **beta_exercise.Rmd:** An R Markdown document to be distributed to student repositories; includes the in-class assignment and homework. Knitting generates a .pdf of their work.
	
* **beta_exercise.pdf:** Output of beta_exercise.Rmd. This is the file that students turned-in via submitting a pull request on GitHub.
	
* **beta_handout.Rmd:** Generates a handout that was given to students to guide them through the in-class assignment and provides example code.
	
* **beta_handout.pdf:** Provides students with information and example code for exploring beta-diversity
	
* **beta_homework_list.Rmd:** ...
	
* **beta_supplementary.Rmd:** Contains code that could be made available to students or included into the exercise
	
##GeographicalEcology: Diversity across landscapes 
Week 5 focused on geographical ecology, i.e., examining diversity across a landscape in a spatially explicit context, using R Studio as a geographical information systems (GIS) environment. This lesson introduced students to the concepts of spatial aggregation, spatial autocorrelation, and considerations of spatial scale. This lesson also introduced students to the primary biogeographical/macroecological patterns known as the Distance-Decay relationship, Spatial abundance distribution, and the Species-area relationship. 
	
* **BrownCoData:**
	* *20130801_PondDataMod.csv* :
	* *SiteBySpecies.csv* :
	* *pond.JPG* :
	
* **LandCover:** 
	* *LandCover.tif* :
	
* **water:** 
	* *water.shp* : Shapefile used to generate a GIS layer of water data. Requires .dbf and .shx files.
	* *water.dbf* : Shapefile attribute format file
	* *water.shx* : Shape index format file
	* *water.prj* : File of geographic projection data
		
* **GeographicalEcology_Exercise.Rmd**: An R Markdown document to be distributed to student repositories; includes the in-class assignment and homework. Knitting generates a .pdf of their work.
	
* **GeogrpahicalEcology_Handout.Rmd**: Generates a handout that was given to students to guide them through the in-class assignment and provides example code.
	
* **GeographicalEcology.pdf**: Provides students with information and example code for exploring geographical ecology, using GIS modules in R/RStudio.
	
	* *Glossary.Rmd* : 

##PhyloTraits: Phylogenetic Traits

* **data:**

	* out.aln.muscle.afa:

	* p.isolates.afa:

	* p.isolates.fasta:

	* p.isolates.kali.fasta:

	* p.isolates.raw.growth.txt:

	* p.isolates.std.growth.txt:

	* p.isolates.stdgrowth.text:

	* p.isolates.taxonomy.txt:
		
* **PhyloTraits_exercise.Rmd**: An R Markdown document to be distributed to student repositories; includes the in-class assignment and homework. Knitting generates a .pdf of their work.
	
* **PhyloTraits_exercise.pdf**: Output of PhyloTraits_exercise.Rmd. This is the file that students turned-in via submitting a pull request on GitHub.
	
* **PhyloTraits_handout.Rmd**: Generates handout .pdf that can be given to student and provides example code while guiding them through the exercise.

* **PhyloTraits_handout.pdf**: Provides students with information and example code for exploring trait-based phylogenetic diversity, in general and in a niche-breadth and specialist/generalist context.
	
* **PhyloTraits_homework_list.Rmd**:
	
* **PhyloTraits_supplementary.Rmd**: Contains supplemental code that was not included in the week's exercise but can be included in future classes. 

##PhyloCom: Phylogenetic Community Ecology
* **BrownCoData:**
	* *20130801_PondDataMod.csv:*
	* *SiteBySpecies.csv:*
	* *pond.JPG:* 
	
* **bin:**
	* *MothurTools.R:* 
	
* **data:**
	* *20130801_PondDataMod.csv:* 
	* *INPonds.final.1.rep.fasta:*
	* *INPonds.final.FW.1.taxonomy:*
	* *INPonds.final.FW.shared:*
	* *INPonds.final.FW.taxonomy:*
	* *INPonds.final.rdp.1.cons.taxonomy:*
	* *INPonds.final.rdp.1.rep.fasta:*
	* *INPonds.final.rdp.shared:*
	* *methanosarcina.fasta:*
	
* **PhyloCom_exercise.Rmd**: An R Markdown document to be distributed to student repositories; includes the in-class assignment and homework. Knitting generates a .pdf of their work.
	
* **PhyloCom_exercise.pdf**: Output of PhyloCom_exercise.Rmd. This is the file that students turned-in via submitting a pull request on GitHub.
	
* **PhyloCom_handout.Rmd**: Generates handout .pdf that can be given to student and provides example code while guiding them through the exercise.
	
* **PhyloCom_handout.pdf**: Provides students with information and example code for exploring phylogenetic community ecology within a geographical context.
	
* **PhyloCom_supplementary.Rmd**:
	
* **PhyloCom_supplementary.pdf**:
	

##GitOn: Course Wrap Up
* **images**:

* **GitOn_handout.Rmd**:

* **GitOn_handout.pdf**:

* **README.md**:

* **example_license.md**:
	
##Resources 
* **GitFlow-All.pdf**:
	
* **RMarkdownCheatSheet.pdf**:
	
* **RMarkdownCheatSheet.png**:
	
* **R_ReferenceCard.pdf**:
	
* **SoftwareInstallation.Rmd**:
	
* **SoftwareInstallation.pdf**:
	
* **Unix_Reference.pdf**:
	
* **git-cheat-sheet.pdf**:
	
* **git-cheat-sheet.png**:	 	

## Additional resources

### Git / GitHub
http://git-scm.com/videos

### R / RStudio
Google R Style Guide