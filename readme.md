# A very specific raffle picker that Sam needed for his study

## You are welcome Sam

### Basic setup

* Download this repo
  * The easiest way for you will be to click the `Clone or download` button and download the zip file
* Put the folder in an easy to locate place
* Open your terminal
  * On mac, open the application called Terminal
  * On PC, open the application called cmd
* Make sure you are in the right directory
  * Type `pwd` (print working directory) to see where you are currently
  * Type `ls` (list) to see all the folders and files in your current directory
  * Type `cd` (change directory) to change your working directory
    * The easiest way will be to copy the full path of your folder and go directly to it
    * ex: `cd /Users/Sam/Desktop/sams_raffle_picker-master/src`

### To run

* Add the csv file to the `src` directory
* In the terminal, from `src` run `ruby runner.rb`
* Program will prompt you for the file name and number of winners and should output the corresponding winners mTurkCode

### Troubleshooting

* I get an error: `ruby: No such file or directory -- runner.rb (LoadError)`
  * Make sure you are:
    1. In the raffle picker directory in your terminal
    2. In the `src` directory
* It blows up at me when I try to put the file name in
  * Is the file a `.csv`?
  * Is the file in the `src` directory?
  * Are you typing the file name EXACTLY as it appears? (include udnerscores, dashes, space and .csv at the end)
* Something else?
  * Just call me
