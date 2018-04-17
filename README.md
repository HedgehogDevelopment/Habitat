# Sitecore Habitat Compacted
This project is an example show-casing how Habitat can get better build and deployment times using a compacted solution hierarchy, but still adhering to the Helix best practices.
This solution uses [TDS Classic](https://www.teamdevelopmentforsitecore.com/Download/TDS-Classic) (which also assists in faster deployments), the [TDS Classic Helix Validators](http://hedgehogdevelopment.github.io/tds/chapter4.html#validations) (checking items adhere to Helix best practices) and the [Helix FxCop Rules](https://www.hhog.com/blog/sitecore-helix-fxcop-rules) (checking that code adheres to the Helix best practices).

This example could be taken further, by relocating code/files into MVC Areas, and other folders to better compartmentalize each module, however this solution still gives the alternative direction that so many developers have sought when using Helix in their solutions.

## How to Increase Build and Deployment Times ##
When creating your own Helix-based solutions, please consider some of the ways that you can improve build and deployment times. Some possible solutions for this can be found here:- [http://sitecore.stackexchange.com/questions/4076/slow-build-performance-using-tds-helix-inspired/4114](http://sitecore.stackexchange.com/questions/4076/slow-build-performance-using-tds-helix-inspired/4114)

## Pre-requisites ##
Follow [the instructions to setup the Helix FxCop Rules](https://www.hhog.com/blog/sitecore-helix-fxcop-rules) on your local system.
This requires restoring NuGet packages, and copying the `HedgehogDevelopment.FxCop.Helix.dll' file from the `packages/HedgehogDevelopment.FxCop.Helix.X.X.X.X/build/FxCop/Rules` folder, to your Visual Studio FxCop Rules folder.
 - i.e for VS2017, this is `C:\Program Files (x86)\Microsoft Visual Studio\2017\Enterprise\Team Tools\Static Analysis Tools\FxCop\Rules`
 - for VS2015, this is `C:\Program Files (x86)\Microsoft Visual Studio 14.0\Team Tools\Static Analysis Tools\FxCop\Rules`
 
## Installation: ##
1. Clone this repository to your local file system.
2. Set up a clean Sitecore 8.2 Update-5 website (We recommend using Sitecore Instance Manager). The codebase uses this version with it's referenced NuGet packages and configs, so using any other Sitecore version may require changes to the code.
 - Default URL: http://habitat.dev.local/ 
 - Default Location: C:\Websites\Habitat.local\
3. Install the Webforms for Marketers module.
4. Open the solution in Visual Studio.
5. (optional) Configure your settings if you are using other settings than default:
To change the standard location of source, website files and website URL modify the following files:
  - /Configuration/z.Habitat.DevSettings.config
  - /Configuration/TdsGlobal.config 
6. Deploy the Solution (Right click on the solution -> Deploy Solution) in Visual Studio 2017. This will restore all NuGet packages, build the code, and deploy all Sitecore Items and Project Items to your local website.
7. Be productive!
