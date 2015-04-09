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

### Contents
* **Course Goals:** Computer Setup; Intro to Git. This can be completed once weeks 1 and 2 are split

##Week 2: R Workshop
In week 2, we introduced students program R and the R Studio development environment. Students completed basic calculations, statistics, and data manipulation.

### Contents
* **To be added:** This can be completed once weeks 1 and 2 are split

##Alpha: Within-site diversity
The third week focused on aspects of alpha-diversity, i.e., diversity within a site. Students were introduced to the site-by-species matrix as a primary ecological data structure. They estimated coverage, richness, evenness, and diversity, and conducted rarefaction and species abundance distribution analyses. Students worked with the vegan package and the BCI data within vegan, as well as soil bacteria data.

### Contents
* **data:** Contains a file of site-by-OTU data for soil bacteria, i.e., soilbac.txt
	
* **alpha_exercise.Rmd:** An R Markdown document to be distributed to student repositories; includes the in-class assignment and homework. Knitting generates a .pdf of their work.
	
* **alpha_exercise.pdf:** Output of alpha_exercise.Rmd
	
* **alpha_handout.Rmd:** Generates a handout that was given to students to guide them through the in-class assignment and provides example code.
	
* **alpha_handout.pdf:** Provides students with information and example code for exploring alpha diversity
	
* **alpha_supplementary.Rmd:** Contains code that could be made available to students or included into the exercise

##Beta: Diversity among sites
The fourth week focused on aspects of beta-diversity, i.e., heterogeneity or turnover in diversity across sites. This work focuses heavily on multivariate ordination-based approaches using pair-wise site by site similarity/dissimilarity estimates. Students were introduced to (packages, tools) and used data from ...

### Contents
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
	
### Contents
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
Week 6 switched the focus of the Quantitative Biodiversity course from the taxonomic or species level to the level of phylogenetic diversity. Students were introduced to methods for estimating a niche-breadth and were introduced to the specialist/generalist concept as well as tools for examining it.

### Contents
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

* **PhyloTraits_handout.pdf**: Provides students with information and example code for exploring trait-based phylogenetic diversity.
	
* **PhyloTraits_homework_list.Rmd**:
	
* **PhyloTraits_supplementary.Rmd**: Contains supplemental code that was not included in the week's exercise but can be included in future classes. 

##PhyloCom: Phylogenetic Community Ecology
Week 7 focused on examining the Phylogenetic patterns at the community level in a geographical context. Students were introduced to measures of phylogenetic-level alpha and beta diversity, and to geographic patterns of phylogenetic diversity including a Distance-Decay Relationship and the Phylogenetic Diversity-Area Relationships.

###Contents
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
In the eigth and final week, we had student construct their own file of R source code for various functions used throughout Quantitative Biodiversity. We discussed the topics of open science and reproducible science more thoroughly, and inroduced students to the idea of licenses. We had students set up public accounts on GitHub.com, showed them how to apply for private repositories, and demonstrate how they could move their class-based code into their own GitHub.com account.

###Contents
* **images** A folder containing images that are used by the GitOn_handout.Rmd document

* **GitOn_handout.Rmd**: Generates a handout leading students through migrating their course materials and assignments to GitHub, and introduces them to licensing, and GitHub.com.

* **GitOn_handout.pdf** The handout given to students.

* **README.md**: An example README.md file

* **example_license.md**: An example GNU GPL version 3 license
	
##Resources
A basic set reference materials relating to Git, R, Unix/Linux, and the installation of various software.

* **GitFlow-All.pdf**
* **RMarkdownCheatSheet.pdf**
* **RMarkdownCheatSheet.png**
* **R_ReferenceCard.pdf**
* **SoftwareInstallation.Rmd**
* **SoftwareInstallation.pdf**
* **Unix_Reference.pdf**
* **git-cheat-sheet.pdf**
* **git-cheat-sheet.png** 	

## Additional resources

### Git / GitHub
http://git-scm.com/videos

### R / RStudio
Google R Style Guide