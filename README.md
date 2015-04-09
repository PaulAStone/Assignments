#Assignments: Weekly Handouts and Exercises for Quantitative Biodiversity

**Contributors**: Jay Lennon, Ken Locey, Mario Muscarella

**Funding**: Development of Indiana University's first Quantitative Biodiversity class, including the materials in this repository, were supported by a National Science Foundation Dimensions of Biodiversity grant ([1442246](http://www.nsf.gov/awardsearch/showAward?AWD_ID=1442246)) awarded to Drs Jay Lennon and Ken Locey of Indiana University, Bloomington.AWD_ID=1442246&HistoricalAwards=false

## REQUIRED SOFTWARE
R version 3.1.2  
RStudio Version 0.98.1062 or higher  
git version 1.9.3 or higher

**Windows specific:**  
LaTeX: MiKTEX, http://miktex.org/download   
Git: GitBash, unix-style terminal window, may install with Git

**Mac specific:**   
LaTeX: MacTeX or BasicTeX https://tug.org/mactex/morepackages.html

**NOTE**: GitHub for Mac and Windows can also be used, but were not used as part of the 2015 course.

## WEEKLY LESSONS
The 2015 Quantitative Biodiversity class consisted of eight classes, each with its own focus. The contents of the course materials are presented here, in the order the classes were taught.

### Week 1: Introduction to Git and RStudio
The objectives in this assignment were actually conducted over the span of two weeks. 
In the first wee, we introduced students to Git and GitHub, and explained the general workflow of the class. 
We had students fork the class repository to their own IU-Enterprise GitHub account.
Se then had students clone that repository onto their classroom desktop.

In the second week, we introduced students program R and the R Studio development environment. Students completed basic calculations, data manipulation, and introductory data visualization and statistics, including correlation, regression, and ANOVA.

#### Contents
* **Course Goals:** Computer Setup; Intro to Git. This can be completed once weeks 1 and 2 are split

### Alpha: Within-site diversity
The third week focused on aspects of alpha-diversity, i.e., diversity within a site. Students were introduced to the site-by-species matrix as a primary ecological data structure.
Students worked with the vegan package in R and the BCI data within vegan, as well as soil bacteria data. 
They estimated coverage, richness, evenness, and diversity, and conducted rarefaction and species abundance distribution analyses. 

#### Contents
* **data:** Contains a file of site-by-OTU data for soil bacteria (soilbac.txt)
	
* **alpha_exercise.Rmd:** An R Markdown document distributed to student repositories; includes the in-class assignment and homework. 
Knitting generates a .pdf of their work.
	
* **alpha_exercise.pdf:** Output of alpha_exercise.Rmd. 
This is the file that students turned-in via submitting a pull request on GitHub.
	
* **alpha_handout.Rmd:** Generates a handout that was given to students to guide them through the in-class assignment, which includes example code.
	
* **alpha_handout.pdf:** pdf version of alpha_handout.Rmd
	
* **alpha_supplementary.Rmd:** Contains code that could be made available to students or included into the exercise

### Beta: Diversity among sites
The fourth week focused on aspects of beta-diversity, i.e., heterogeneity or turnover in diversity across sites. 
Instructors emphasized tools to quantify beta-diversity, including distance metrics. 
With this information, students learned how to visualize data (heatmaps, clustern analysis, ordination) and test hypotheses (CCA, PERMANOVA).

#### Contents
* **data:** folder containing files of ... data
	* *bci.soil.txt* : Environmental data for Barro-Colorado Island (BCI), obtained from (???)
	
	* *soil.factors.txt* :  
	
	* *soilbac.RData* :
	
	* *soilbac.list.txt* :
	
	* *soilbacfull.txt* :

* **beta_exercise.Rmd:** An R Markdown document distributed to student repositories; includes the in-class assignment and homework. 
Knitting generates a .pdf of their work.
	
* **beta_exercise.pdf:** Output of beta_exercise.Rmd.
This is the file that students turned-in via submitting a pull request on GitHub.
	
* **beta_handout.Rmd:** Generates a handout that was given to students to guide them through the in-class assignment, which includes example code.
	
* **beta_handout.pdf:** pdf version of beta_handout.Rmd	
* **beta_homework_list.Rmd:** ...
	
* **beta_supplementary.Rmd:** Contains code that could be made available to students or included into the exercise
	
### GeographicalEcology: Diversity across landscapes 
Week 5 focused on geographical ecology, i.e., examining diversity across a landscape in a spatially explicit context, using R Studio as a geographical information systems (GIS) environment. 
This lesson introduced students to the concepts of spatial aggregation, spatial autocorrelation, and considerations of spatial scale. 
This lesson also introduced students to the primary biogeographical/macroecological patterns known as the distance-decay relationship, spatial abundance distribution, and the species-area relationship. 
	
#### Contents
* **BrownCoData:**
	* *20130801_PondDataMod.csv* :
	* *SiteBySpecies.csv* :
	* *pond.JPG* :
	
* **LandCover:** 
	* *LandCover.tif* :
	
* **water:** 
	* *water.shp* : Shapefile used to generate a GIS layer of water data. 
	Requires .dbf and .shx files.
	* *water.dbf* : Shapefile attribute format file
	* *water.shx* : Shape index format file
	* *water.prj* : File of geographic projection data  
	
* **GeographicalEcology_Exercise.Rmd**: An R Markdown document distributed to student repositories; includes the in-class assignment and homework. 
Knitting generates a .pdf of their work.	


* **GeographicalEcology_Exercise.pdf**:?????


* **GeogrpahicalEcology_Handout.Rmd**: Generates a handout that was given to students to guide them through the in-class assignment, which includes example code.
	
* **GeographicalEcology.pdf**: pdf version of GeographicalEcology_Handout.Rmd.
	
	* *Glossary.Rmd* : 

### PhyloTraits: Phylogenetic Traits
Week 6 introduced concepts and methods of phylogenetic diversity. 
Students learned how to align sequence data, evaluate models of DNA evolution, and make phylogenetic trees.
Last, student leanred how to map trait onto trees and test for phylogenetic signal.

#### Contents
* **data:**

	* out.aln.muscle.afa:

	* p.isolates.afa:

	* p.isolates.fasta:

	* p.isolates.kali.fasta:

	* p.isolates.raw.growth.txt:

	* p.isolates.std.growth.txt:

	* p.isolates.stdgrowth.text:

	* p.isolates.taxonomy.txt:
		
* **PhyloTraits_exercise.Rmd**: An R Markdown document distributed to student repositories; includes the in-class assignment and homework. 
Knitting generates a .pdf of their work.
	
* **PhyloTraits_exercise.pdf**: Output of PhyloTraits_exercise.Rmd.
This is the file that students turned-in via submitting a pull request on GitHub.
	
* **PhyloTraits_handout.Rmd**: Generates handout .pdf that can be given to student and provides example code while guiding them through the exercise.

* **PhyloTraits_handout.pdf**: pdf version of PhyloTraits_handout.Rmd.
	
* **PhyloTraits_homework_list.Rmd**:????
	
* **PhyloTraits_supplementary.Rmd**: Contains supplemental code that was not included in the week's exercise but can be included in future classes. 

### PhyloCom: Phylogenetic Community Ecology
Week 7 introduced concepts and tools needed to look at multi-species assembalages in a phylogenetic context. 
Students were introduced to measures of phylogenetic alpha- and beta-diversity.
In addition, students learned how to evaluate the contribution of phylogeny to geographical patterns of biodiversity, including distance-decay relationship and the phylogenetic diversity-area relationship.

#### Contents
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
	
* **PhyloCom_exercise.Rmd**: An R Markdown document distributed to student repositories; includes the in-class assignment and homework. 
Knitting generates a .pdf of their work.
	
* **PhyloCom_exercise.pdf**: Output of PhyloCom_exercise.Rmd
This is the file that students turned-in via submitting a pull request on GitHub.
	
* **PhyloCom_handout.Rmd**: Generates handout .pdf that can be given to student and provides example code while guiding them through the exercise.
	
* **PhyloCom_handout.pdf**: pdf version of PhyloCom_handout.Rmd.
	
* **PhyloCom_supplementary.Rmd**:
	
* **PhyloCom_supplementary.pdf**:
	

### GitOn: Course Wrap-Up
In the eigth and final week, we had student construct their own file of R source-code for various functions used throughout Quantitative Biodiversity. 
We discussed the topics of open science and reproducible science more thoroughly, and inroduced students to the idea of licenses. 
We had students set up public accounts on GitHub.com, showed them how to apply for private repositories, and demonstrated how they could move their class-based code into their own GitHub.com account.

###Contents
* **images** A folder containing images that are used by the GitOn_handout.Rmd document

* **GitOn_handout.Rmd**: Generates a handout that guides students through migrating their course materials and assignments to GitHub, and introduces them to licensing, and GitHub.com.

* **GitOn_handout.pdf** The handout given to students.

* **README.md**: An example README.md file

* **example_license.md**: An example GNU GPL version 3 license
	
## Resources
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

## Git / GitHub
http://git-scm.com/videos

## R / RStudio
R Style Guide