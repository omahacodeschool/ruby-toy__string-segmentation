# Toy Problem - Ruby

## String Segmentation

Given a string like `"turtlebluetraintrust"`, collect real words (starting from the left) and return them in an array–e.g. `["turtle", "blue", "train", "trust"]`.

Assume every character in the string is part of a real word. E.g. `"bb83pstaro"` is not an input you would have to deal with.

That also means that you must take care when dealing with a string like `"smilesbirthfive"`, because if the word `"smile"` is detected, that leaves the `"s"` after it dangling, which is not okay. So your program needs to be able to handle such a string to properly return `["smiles", "birth", "five"]`.

## Getting Started

### Installation

First, fork this repository, if you haven't already.

Then clone your fork on to your local development machine:

```zsh
cd ~/Code
git clone url_for_your_copy_of_this_assignment
```

(Note: You'll need to replace `url_for_your_copy_of_this_assignment` with the actual SSH URL for your repository, which looks something like `git@github.com:sumeetjain/ruby-toy__some-assignment.git`.)

That will create a folder named for the assignment in **~/Code**, and it will download the files from the repository into that folder.

Next, `cd` into that newly created folder, and run the setup script:

```zsh
cd the-newly-created-folder
bin/setup
```

(Note: You'll need to replace `the-newly-created-folder` with the actual name of the folder for your assignment.)

You won't need to run the setup script for this assignment again.

If the setup script does not return any failures or errors, you're ready to work on the assignment. Open the project folder in your code editor, and begin.