# AERIUS/APAS IMAER plugin for QGIS

QGIS 3 plugin for working with IMAER files

## Documentation

The user documentation can be found here:
[Github Pages](http://aerius.github.io/IMAER-QGIS-plugin/)

The plugin contains a toolbar button that will bring you to the right version of the
documentation in your web browser.

## Running tests

### External tests (from outside QGIS)
* In the folder ```ImaerPlugin/test``` create a ```dev.yml``` file with your local settings (use dev_example.yml as a template)
* To run tests in Linux: Run ```./test_imaer.sh``` from the test folder
* To run tests in Windows: Open the command line from the test folder and run ```python -m unittest test.test_imaer```

The current tests are only covering the generation of GML and validating the generated files
to the XSD. XSD validation can take longer and can be turned off in the script 

### Internal tests (from inside QGIS)
* Start QGIS and make sure the plugin is installed and turned on
* Open a python console
* Open the script ```ImaerPlugin/test/gui_test.py``` and run it

For testing the GUI, the script will change the user configuration (country, crs and work directory). If all tests pass without errors, these settings should be restored. If errors occur, you will need to reset the settings manually.

## Releasing

* Make sure the plugin runs fine!
  * Run tests
  * Test for different QGIS versions
* Update the metadata.txt (version, changelog)
* Update the self.version in the ImaerPlugin class
* update the version (and fields) in the json configuration files for the gui tests
* Run the release script: ```python3 Make_zip_release.py 3.0.0```
* Move the zip file to the ```releases``` directory
* For new major and minor releases, create (and update) a copy of the documentation
* Upload to plugins.qgis.org

## Dependencies in AERIUS project

Changes in IMAER and CONNECT can affect the working of the plugin. The following parts of
the IMAER data model and CONNECT API are supported by this plugin.

## IMAER
* Version number
* Metadata
* Calculation results (depositions, concentrations)
* Emission sources:
  * generic ("other")
  * roads (adms & srmt)
  * buildings
  * diurnal variation / time varying profiles
  * calculation points

## CONNECT
* Version number
* URL
* Services:
  * actuator/health
  * user/generateApiKey
  * jobs
  * wnb/calculate
  * receptorSets
  * utility/validate
