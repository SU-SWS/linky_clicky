Linky Clicky
============

Behat tests mean death to linky-clicky

Installation
-------------

You can either copy the values from the composer.json file to your local file or
you can compile here. The files and directories that composer creates will be
.gitignore'd

`composer install`

If you install locally there should be a `bin/behat` executable for you. You can
either point your system to that behat install or use it in some other way.

Creating a new project
----------------------------

When creating a set of testing features for a new site, create a new directory for that site. Copy `behat.yml.default` and `behat.local.yml.default` into the root of that directory and rename them to `behat.yml` and `behat.local.yml`, respectively. Edit the "base_url" and the drush "alias" values to match the site you are testing.

`behat.yml` imports the files at `includes/extensions/*` and `includes/config`

`behat.local.yml` is ignored by git.

Create a `features` directory and place your `*.feature` files in that directory.

Create a `features/bootstrap` directory, copy `FeatureContext.php.default` into there, and rename it `FeatureContext.php`

In the `features/bootstrap` directory, create a symbolic link for each of the following files.
  1. SWSFeatureContext.php -> includes/bootstrap/SWSFeatureContext.php
  2. SWSDrupalContext.php -> includes/bootstrap/SWSDrupalContext.php
  3. SWSMinkContext.php -> includes/bootstrap/SWSMinkContext.php

The default `FeatureContext.php` file is where you can put your site specific step definitions.

The `SWSFeatureContext.php` file is where all of the custom shared step definitions are stored. Behat 3 does not allow for sub contexts anymore and references to the DrupalContext and MinkContext are saved in variables in this file.

The `SWSDrupalContext.php` file is the DrupalExtention DrupalContext override file and contains an override of the Drupal login step, which is necessary because WMD hides the user login form in a collapsible fieldset.

The `SWSMinkContext.php` file is the DrupalExtension MinkContext override file that contains an extra function.

Formatters
----------------------------

The formatters and syntax that comes with Behat 3 has changed. By default Behat 3 no longer comes with an html output option.
Included in the composer build is an HTML formatter for behat but it needs to be configured in your behat.local.yml file or
passed to the behat function through the command link with a number of parameters.

See: [https://github.com/dutchiexl/BehatHtmlFormatterPlugin](https://github.com/dutchiexl/BehatHtmlFormatterPlugin)    
and: [http://docs.behat.org/en/latest/guides/7.run.html](http://docs.behat.org/en/latest/guides/7.run.html)

Directory structure
-------------------

    sitename
    |--behat.yml
    |--behat.local.yml
    |--features
       |--featurename.feature
       |--bootstrap
          |--FeatureContext.php
          |--SWSFeatureContext.php
          |--SWSDrupalContext.php
          |--SWSMinkContext.php
