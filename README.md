Linky Clicky
============

Behat tests mean death to linky-clicky

Notes on Directory Structure
============================

When creating a set of testing features for a new site, create a new directory for that site. Copy behat.yml.default into the root of that directory and rename it to "behat.yml"

Create a "features" directory and place your *.feature files in that directory.

Create a "features/bootstrap" directory, copy FeatureContext.php.default into there, and rename it FeatureContext.php

The default FeatureContext.php file contains some additional step definitions, and an override of the Drupal login step, which is necessary because WMD hides the user login form in a collapsible fieldset