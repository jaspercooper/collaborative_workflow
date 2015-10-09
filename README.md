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

  - any time you make a change to a line of code and save it, say in `R` or \LaTeX, GH will make a note of it
  
  - however, making changes doesn't yet do anything for our collaborators
  
  - let's practice making some changes:
    1. in Rstudio, create a new text file
    2. save it as `README.md` under a new folder in `00_Archive/example_readmes/your_name` 
    3. write some Markdown-formatted code in it 
    4. now let's check it out in the desktop app
    5. note that nothing has changed on the online repo

Commits: 
  
  - every line of code can be seperately *committed*: this means that you've made the change, and now you want to share it with others
  
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
  
  - they are a super-convnient way to set goals and track progress
  
  - you can set milestones with dates
  
  - you can assign issues to people
  
  - you can tag issues 

### Branches

  - today we have been collaborating by contributing to the 'master' branch
  
  - another development style is to 'fork off' (heh) from the master branch, work on some stuff independently, and then merge it back in 
  
  - this is more important for developers 

## Doing Research Together

### Folder structure

### Avoiding working directory issues

### Sourcing R scripts

### Sinking and inputting LaTeX tables

### Sinking and inputting figures

## Quick web-publishing

### Making html files

### Pushing them to your website

### GH Pages, Travis, etc.




