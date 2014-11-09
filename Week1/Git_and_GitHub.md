## Git and GitHub

Git is a distributed revision control system originally designed for software development. Git is similar to version control systems, such as Subversion and SmartSVN, in that Git allows collaborators to simultaneously work on project code, data, and simple text documents by modifying local versions, 'pushing' changes to one's own online version, and then submitting requests for others to check and merge the changes into the group's project. In short, Git allows multiple people in remote locations to work on the same code, data, and text without irretrievably deleting or writing over others' work.

GitHub is a web-based hosting service for software development projects that uses the Git revision control system. GitHub houses project repositories and provides a powerful graphical interface for 1) creating copies of a project's code, data, and text files that can later be merged with the main project, 2) identifying issues and resolving conicts that can arise when collaborators' versions become greatly out-of-sync, and 3) for licensing and attracting copyright and copyleft for one's work while allowing it to be either visible to the public or only visible to the group or one's self.

### Goals
+ Getting set up in Git and GitHub
+ Creating Accounts
+ Repos

### Create User with IU's Enterprise GitHub Service
1. Navigate to www.github.iu.edu
2. Create a new user
3. Navigate to and click on your student repository (repo) on www.github.iu.edu/QuantitativeBiodiversity
4. For your repo by clicking on the Fork Icon in the top right of your screen<br>
<img src="images/github-fork-btn.png"> 

  You should now see the repo on your GitHub page.

5. Clone the repo onto your local machine using the command line (terminal)

    ```sh
    cd ~/(Path to GitHub Folders)
    git clone https://github.iu.edu/[User Name]/[Repo]
    cd ./[Repo]
    git status
    ```

  The repo should have downloaded onto your local machine and the status should stay "all up to date". You should also see that the only thing in your repo is a file named README.md

  We recommend that you create a folder in your user directory (> cd ~) called '*GitHub*' to make this and future assignments easier to manage.

6. Open and edit the README.md file

    ```sh
    nano README.md
    ```

  Edit the file as needed (we will demonstrate). Update your '*Student Name*' with your full name. Enter your email address. Write a short Bio about yourself (~ 1 paragraph). List three to five course expectations. Hint: View the Markdown guide to learn about formatting and making numbered lists (https://guides.github.com/features/mastering-markdown/). When you are done, save the close the document

    ```sh
    [ctrl + o]
    [ctrl + x]
    ```

7. Now we need to add and commit our changes to git

    ```sh
    git status
    git add ./README.md
    git commit -m "Updated README.md with student information"
    ```

8. Now push the changes to GitHub

    ```sh
    git push master
    ```

  You should now see the repo on your GitHub page.

9. Navigate to your GitHub page to make sure that the file was uploaded correctly. If so, submit a Pull Request to submit your file to the course <br>
  <img src="images/github-pr-btn.png">

  The course instructors can now see your work

