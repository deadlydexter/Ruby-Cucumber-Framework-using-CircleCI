# Ruby Cucumber Framework Using CircleCI

## Prerequisites:
- Install Ruby
- Create a GitHUB Account if not already.
- Sign up for CircleCI Account

## Initializing a New Ruby Cucumber project
- Navigate to your project directory
- Open Command prompt and install the gems using following commands
    + ```gem install testgen```
    + ```gem install bundler```
- To  Genrate a new Project execute the following command:
    + ```testgen project {project_name}```
- Once the command is successfully executed we will be able to see the project files created in our directory
- Now ```cd..``` into the project folder and run ```bundle install``` 
           
## Coding
- Start creating Scenario with the ```Feature``` and ```step_definitions``` files in respective folders and
- Downloading required gems by listing them in ```Gemfile.rb``` or ```gem install {gem_name}``` individually.

## Cucumber profiles using cucumber.yml 
- Users can save and reuse commonly used cucumber flags in a ```cucumber.yml``` file which is usually in the project root directory or under ```/config``` director
- Cucumber.yml => ```default: --no-source --color --format pretty --tags @Tag_name```
## Set up Rake Tasks: 
```
Cucumber::Rake::Task.new(:features) do |t|
    t.profile = 'default'
  end
task :default => :features
```
Now this Rake Task will run all the scenarios which has the tag ```@Tag_name```
## Create a Git Repository and commit all the files (A Refresher !!).
- In your project folder run ```git init``` to initialize git repository 
- Run ```git remote add origin {remote_repository_URL}``` to add a new remote 
- Run ```git add .``` to add all files to the staging area
- Run ```git commit -m "{Commit Message}"``` to commit your changes with a commit message.
- Run ```git push origin master``` to push all your changes to master.

## Now Sign up for CircleCI Account and configure project
- Once the git repository is set up, create an Account for CircleCI.
- Sign In and Add you Organization
- From the list of all the projects available, choose the one we just created.
- Select a config template from the dropdown ```Ruby``` in this case
- Then click on ```Start Building``` to add config to a new branch and start the pipeline. 
- Finally click on ```Add Config``` to be taken to the ```Pipelines Page``` where you can check the status of your application after each deployment.
