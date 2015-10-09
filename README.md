# Collaborative Workflows: Columbia methods workshop on tools for researching and publishing with collaborators

## GitHub

### Why it is good

  - a tool for tracking, labeling and syncing changes in *line-based* documents
  
  - full control of what and when you sync with collaborators
  
  - minimization and easy handling of conflicts
  
  - no redundant multiplication of versions
  
  - great tools for setting deadlines, raising and solving issues, and distributing tasks

> *Note:* Because GitHub is intended for programmers, it is not always the best way to share things such as large binary data files, word documents and images (although all of this is possible). For files that are unlikely to change, it is sometimes better to store them on Dropbox and then source in the data from R. 

### What a repository is 

  - the **online** repository is the shared version of the project, stored on the GitHub server
    - this is where all the versions of the different files are stored
  - your **local** repository is a clone of the online repo
    - unlike dropbox your local repo only reflects changes made to the online repo if you choose to sync with it
    - otherwise, you can change as many things as you like, without those changes necessarily being reflected online or in your collaborators' local repos
    - you can move the location of your local repo to other parts of your computer without anything bad happening: a hidden folder called `.git` keeps a record of all the metadata git needs in order to work

### How to add a repo in the desktop app

You have three options:
  1. Create: you make a new *local* repo in a folder on your computer, and it gets published to your online profile
  2. Add: you choose a pre-existing folder on your computer and it is used as a local repo then published online
  3. Clone: you create or get added to an *online* repo, and this gets cloned to your computer as a local repo

Today we will **clone** this repo
  - go to the GH app
  - click the `+` sign in the top corner
  - click clone
  - click `collaborative_workflow`

### Making and committing changes 

Changes:

  - any time you make a change to a line of code and save it, say in `R` or LaTeX, GH will make a note of it
  
  - however, making changes doesn't yet do anything for our collaborators
  
  - let's practice making some changes:
    1. in Rstudio, create a new text file
    2. save it as `README.md` under a new folder in `00_Archive/example_readmes/your_name` 
    3. write some Markdown-formatted code in it 
    4. now let's check it out in the desktop app
    5. note that nothing has changed on the online repo

Commits: 
  
  - every line of code can be separately *committed*: this means that you've made the change, and now you want to share it with others
  
  - labeling commits is extremely important and helpful for collaborators 

  - let's take a look at a couple of the commits I've made on the GitHub website
  
  - now let's commit some changes to the README.md files 
  
    1. label the change you made when you created the file, and commit it
    2. now write a few new lines of code in the README.md file, and save
    3. check out the GH app
    4. select your firs line only, label it, commit it
    5. continue the process, don't do anything else
    6. let's check out the website: nothing has changed because we haven't "pushed" the commits to the online repo

### Pulling

  - **golden rule**: before trying to push, you should always pull   
  
  - pulling brings in any changes that your collaborators have committed and pushed to the online repo
  
  - this is the best way for GH to avoid conflicts (i.e. if you wrote on the same line)
  
    1. to pull in the desktop app, either press `cmd/ctrl + shift + p` or click `Repository > Pull`
  
    2. check out the 'history' tab
  
### Pushing

  - OK so let's push our changes 
  
    1. go to the desktop app, either press `cmd/ctrl + p`, click `Repository > Push` or click `sync` (which pulls then pushes)
    
    2. let's go check out your fancy new README.md files
    
### Issues and Milestones 

  - issues can be opened and closed on the online repo
  
  - they are a super-convenient way to set goals and track progress
  
  - you can set milestones with dates
  
  - you can assign issues to people
  
  - you can tag issues 

### Branches

  - today we have been collaborating by contributing to the 'master' branch
  
  - another development style is to 'fork off' (heh) from the master branch, work on some stuff independently, and then merge it back in 
  
  - this is more important for developers 

## Doing Research Together

### The project directory

Assuming you are working in `R` and `LaTeX` (as you should be), there are a few principles to adopt:
  - never put spaces in the titles
  - always number the folders in the main directory, this makes navigating easier as the order of files is always preserved
  - always have an `__archive` folder in the top for throwing old versions of things in (even with versifying this can be helpful)
  - always have an .Project file in the main project directory (more on this later)
  - always label versions of documents such as paper drafts with `YYYY_MM_DD_` at the beginning: this ensures that versions are always ordered chronologically
  - always adopt the principle of modularity: one script for one operation or set of operations
  - always think forwards to the pre-registration document or the replication archive

A good way to structure a directory: 

  - `00_Archive` - A bunch of old scrap code, notes, data, etc.
    
  - `01_Data`
    - `Raw_data` - The data in its raw `.csv` format, with *no* changes made to it
    - `Clean_data` - The data in its cleaned form, once a specific R script has cleaned it up
  
  - `02_Analysis` - Typically contains all of the R scripts in one go, although you may have subfolders (i.e. for spatial analysis etc.). The scripts should generally do one thing each, and all be run by one central "main script", whose purpose is to control a few key parameters and source the other ones in. More on this below
  
  - `03_Paper` - This should contain the main `.tex` files, the `.bib`, `.sty`, and other files that `.tex` wants direct access to
    - `figures` - We will output directly from R into this folder, then source the images in from here
    - `tables` - Each table will be output from R in a tabular environment, and sourced into the main `.tex` file
    - `presentations` - It makes sense to put beamer presentations etc. into here, because that way you can just copy and paste the image and table code from the paper, and just add `../` to the file paths (more below)
  
  - `04_Presentations` or `04_Literature` - Other folders that probably won't go into the replication archive but are useful for the project
    
### Avoiding working directory issues
  
  - A huge issue in collaborative workflows are file path conflicts
  
  - It is possible to avoid them entirely:
    - **file path tip 1**: always run R from the `.Rproj` file: this automatically sets the working directory to the local project folder on the computer of the user, so all scripts can be run with reference to the project folder. This is also true for the replication archive: make sure to include the `.Rproj` file in it.
    - **file path tip 2**: in R, open up some quotes `"..."` and press `tab` to get suggestions for file paths. 
    - **file path tip 3**: use `../` to navigate up a level. 
    - **file path tip 4**: never use `setwd()`, you shouldn't have to.
    - **file path tip 5**: never make reference to your local path structure, you shouldn't have to.
    - **file path tip 6**: by default, `.tex` files always treat their folder as the directory for sourcing stuff like figures, `.bib` files, other `.tex` files, etc.

### Sourcing R scripts

R can run other scripts from a single script. 

There are three huge advantages to writing R scripts in a very modular way and running them from one main script: 
  1. It makes it much easier for collaborators to see what is being done where. So, for example, if I want to re-do the main analysis tables with an extra interaction throughout the models, I can just copy the `.R` script called `01_main_analysis.R`, call it `04_main_analysis_interacted.R`, and then add that
  2. It keeps the environment clear. You can make R scripts "tidy up" after themselves by including `rm(stuff,you,dont,need)` at the end.
  3. It makes it easier to jump into the workflow at any point. Good practice is to have at least one script that cleans and outputs data, and another script that loads the helper functions you will be using. Once these are loaded you can usually skip the other analysis steps and just run new analyses.  

Lets look at the examples in `02_Analysis`. 

### Sinking and inputting LaTeX tables

  - **Never** copy and paste tables
  - `sink()` them into `.tex` files from `R` using `stargazer`
  - then `\input{}` them into your LaTeX paper
  - this is akin to a manual version of `knitr` 
    - advantage of stability
    - and tables can be sourced in across documents, only running code once
  - any updates to the analysis are immediately integrated into the analysis 
    when you compile the `.tex` document
  - never worry about compiling weirdness
  - can make sense to use `knitr`, but not always efficient 
  
> Let's look at an example

### Sinking and inputting figures

  - You can output and input `.pdf` and `.png` files in much the same way
  - use `pdf()` in `R` and `\includegraphics[]{}` in LaTeX

> Let's look at an example

## Quick web-publishing

### Pushing .html files to your website

  - build the `.html` file in `.Rmd`
  
  - upload it to your website using SFTP!!!

### GH Pages, Travis, etc.

  - a host of amazing tools for building websites in Markdown now exist
  
  - here is [one example](http://alpha.experimentr.org) built using [Jekyll](http://jekyllrb.com/docs/sites/)



