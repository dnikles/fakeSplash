# fakeSplash
see what's going on with your enrollment policies before logging in for the first time

fakeSplash is an attempt to display what's happening with your enrollment triggered jamf policies before logging in to your computer. It is similar to splashbuddy and other apps of that nature. This would be useful in a lab environment where you want to see the progress of your initial setup. This is accomplished by modifying the policy banner.

## Example
![Office](images/Office.jpg)

## Setup
- Set up a prestage enrollment policy 
  - If all of your computers will receive the same setup, there is no need to differentiate. We use several different configurations, so we need a way to differentiate which policies will get applied to which configs. I use the department field for this. How you handle this is up to you. ![department](images/department.png)
- Create folder "fakesplash" in /Users/Shared
- Place template.rtfd file into the fakesplash folder
- Place images to be displayed into the fakesplash folder. Name the image the name of the application or policy. ![apps](images/apps.png)
- Using Composer, create a .dmg of /Users/Shared/fakesplash and upload to your JSS ![composer](images/composer.png)
- Upload the script "setAppLoadingMessage" to your JSS 
  - set priority to before
- Upload the script "buildBanner" to your JSS and set priority to before
  - set priority to before
  - set parameter label for parameter 4 to "App Name" 
- Policy Creation
  - I number policies because they are executed in alphabetical order
  - I scope the policies to departments set in the prestage enrollment
  - All policies are triggered by Enrollment Complete and have a frequency of Ongoing
- First Policy
  - named to "00 Reload Login Window" so it executes first
  - Installs the fakesplash.dmg that you created with composer
  - Run the script setAppLoadingMessage 
    - This sets our initial policy banner as soon as possible
    
