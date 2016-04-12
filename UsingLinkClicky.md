# Using Behat

The purpose of testing is to ensure that requirements are met. Additionally, regression testing ensures that changes to the code or the site do not make unexpected changes elsewhere. Best practices dictate that we want full testing coverage, yet we want our set of tests DRY (don’t repeat yourself). So, what are the best practices for testing?

Also see [Writing BDD tests for Drupal.org](https://www.drupal.org/node/1578324), [Feature/Scenario Review Checklist](https://www.drupal.org/node/1782858), 

## Analysis

Let’s examine the various considerations of testing our products and sites.

### Functionality

 In our product development we need to test the functionality of a site. For our websites this includes:

1. Behaviour: Does the site behave or function as expected?

2. Theme: Does the site have the correct design, layouts, fonts, and colors? This includes menus, block placement, logos, etc.

3. Content: Did our placeholder content and help text get imported properly?

4. Hosting Environment: Where is this site hosted? Is it local on your machine? Is it on sites? On Anchorage? 

5. Authentication Scheme: What approach do use to authenticate? Native Drupal? Webauth? SamL?

### Lifecycle

Testing for our product development and subsequent sites has a sort of timeline or lifecycle. Which looks roughly like this:

    Requirements
        > Development
            > Deployment
                > Customization
                    > Production
                        > Launch
                            > Live
                                
                           
For each phase of this lifecycle, we may need a specific set of tests. Although individual tests may overlap between phases, there are many tests that are only relevant to a particular phase. 

#### Requirements

In the requirements phase we define the functionality. This functionality might be for a new or updated product, theme, behavior, content, etc. Ideally, this is the phase in which we identify and draft our first Behat tests. 

#### Development

During development we are adding to the functionality of the product, so here’s where we thoroughly test functionality. Since you can expect that the site will get rebuilt, anything goes. In our tests, we can add random content, delete existing pages, change the name of the site, etc.

#### Deployment

The deployment phase signals that we are no longer in development. When we deploy a site for a customer, we need to assume that we fully tested product functionality in development. In this phase we want to ensure that the site was deployed properly. We need to verify that the modules, themes, and content were all enabled and imported properly. We want happy customers!

#### Customization

For some of our clients we build extensive and unique functionality for their site. Although development occurs during this phase, it often occurs in tandem with the production phase on a site and we cannot expect the site to be rebuilt. Testing in the phases verifies functionality yet cannot change anything on the site. 

#### Production

In the production phase, as the customer replaces placeholder content, removes and adds pages to the menu, and customizes their site, we use regression testing to verify that any changes to the site such as patches and security updates do not break anything on the site.  Any testing for this phase here should be safe at all phases of the lifecycle and should be used for regression testing on live sites. 

#### Launch

When we launch a site, we perform tasks on the site to prepare it for the public view. Tests at this point would verify if these launch prep tasks were completed properly. 

#### Live

Once a site has been launched, its URL will have changed and pages on the site will be open to crawling by search engines. Tests specific to this phase would verify these changes.  

## Introducing Behat

If we think of a web site as a city, our Behat tests would then be our guide for to exploring the city. In testing a site, Behat uses the tests we have defined to navigate and verify a site’s functionality. 

As evidenced in the analysis above, our testing needs are complex. We will need to take care in structuring our testing so that we can verify our requirements yet remain DRY. To meet this goal, Behat provides various approaches to structuring our tests. Let’s review these approaches and propose how we can map them to our domain.

### Proposed Use of Organizing Structures in Behat

#### Profile == Site

A profile is a custom name that defines a testing configuration in a behat.yml file. Inherent to a profile is the site which is to be tested. We can use the behat.yml and behat.local.yml files to define a site to be tested and some parameters for that testing. 

#### Suite == Lifecycle 

A suite represents a group of concrete features together with the information on how to test them. We can use suites to address testing needs for the various phases of our product and site life cycles. We’ll delve more into suites below. 

#### Directory == Product or Customized Site

By default, Behat executes the tests in the ‘features’ subdirectory within the current directory. We can use the features directory to identify all the tests applicable to a product or custom site. Tests that are specific to this product or site reside in the subdirectory for that product or site. We can then use symlinks to identify tests that reside in other directories. Presumably, these test will reside in the ‘includes’ directory.

#### Feature (file) == Functionality

A feature is the human-readable stories that describe the behavior of your application. It is with these Behat features that we actually navigate and verify the requirements for site. Each feature resides in its own file (*.feature) and is either symlinked or located in the ‘features’ directory. To keep things DRY, in applying Behat features to our domain, each feature should contain specific functionality. 

If we are testing the functionality of a Jumpstart ‘feature’ each Behat feature file should correspond with a module that can be enabled or disabled. For example, if you are testing a content type, say "Stanford Private Page," the corresponding Behat feature might be “stanford\_private\_page.feature.” Whereas if you are testing the “manage content” functionality for Stanford Private Page, the corresponding feature would be “stanford\_private\_page\_administration.feature”

As well, we might want to have a "Feature disabled" set of tests. In JSE, we have the situation where we roll out a site then disable the features that the client doesn’t need.

Other areas of specific functionality for Behat features might include verifying the structure of the main menu, block layout for the homepage, logos, fonts, colors, etc. Each of these item would reside in a separate *.feature file. 

##### Examples of functionality beyond modules:

* Menus - Verify the menu structure for a custom site or newly deployed product site 

* specific pages - about, courses, research, academics, Homepages   

* Role name - verify permissions for roles (site owner, site member, editor) on a product or custom site

* Placeholder Content - should be designated by deploy tag

#### Tags == Lifecycle 

Tags provide a great way to organize your features and scenarios. Tags can be used to identify the lifecycle phase to which this scenario or feature applies. We’ll delve more into tags below. 

#### Scenarios == Functionality

Consisting of one or more steps, scenarios map to requirements and phases of the lifecycle. Tags associated with scenarios identify the lifecycle phases targeted by the scenario. Each scenario should stand alone. That is, it doesn’t depend on the actions of a previous scenario. If setting up the scenario gets too cumbersome for multiple scenarios, look into using backgrounds.

#### Steps == Functionality

Using human readable phrases and beginning with words such as Given, When, and Then, each step plays a part in navigating and verifying functionality. 

### More on Tags

I love using tags. I can tag one test with my initials, then using the --tags <my initials>, I can run just that one test. Tags provide lots of flexibility. However, our features and scenarios can drown in tag soup if we aren’t careful. I’m proposing we adhere to a strict approach for using tags. Here’s what I’m proposing:

#### Lifecycle Tags - *Required for every scenario*

All scenarios should be tagged with a single lifecycle tag. 

<table>
  <tr>
    <td>@dev </td>
    <td>Only for development tests. Not safe for production.</td>
  </tr>
  <tr>
    <td>@deploy</td>
    <td> Applies tests specific for a freshly deployed website. Not useful once production begins.</td>
  </tr>
  <tr>
    <td>@safe</td>
    <td>Useful for tests that can work on dev, deploy, production, launch, and live sites. These tests may not create any content, change any settings, or leave any trace that it has run. Note: some Scenarios tagged as @safe clear the cache. We have labeled clearing the cache as a "safe" operation.</td>
  </tr>
  <tr>
    <td>@launch</td>
    <td>Useful for testing that placeholder content has been removed.</td>
  </tr>
  <tr>
    <td>@live</td>
    <td>Applies only for sites post launch. These tests verify launch tasks such as verifying meta-tags, vhost URLs, removing "Request to Launch" menu item, etc.</td>
  </tr>
</table>


#### Additional Tags

Along with lifecycle, tags can identify other situations.

<table>
  <tr>
    <td>@destructive</td>
    <td>Only for development tests. This scenario may change configuration or leave lasting items/content/config on the site it is running on. Not safe for production. </td>
  </tr>
  <tr>
    <td></td>
    <td>Authentication - Under consideration</td>
  </tr>
  <tr>
    <td>@saml</td>
    <td></td>
  </tr>
  <tr>
    <td>@webauth</td>
    <td></td>
  </tr>
  <tr>
    <td></td>
    <td>Hosting - Under consideration</td>
  </tr>
  <tr>
    <td>@sites</td>
    <td></td>
  </tr>
  <tr>
    <td>@local</td>
    <td></td>
  </tr>
  <tr>
    <td>@anchorage</td>
    <td></td>
  </tr>
</table>


#### Considerations for Tags

* Unless a scenario is tagged with @destructive it is assumed it will not make destructive changes to the site. 

* All scenarios should have exactly one lifecycle tag: (@dev, @deploy, @safe, @launch, and @live)

[Learn about d.o tags](https://www.drupal.org/node/1780048)

### More on Suites

Suites target the various phases of the product and site life cycles. Here are the suite definitions I’m proposing:

<table>
  <tr>
    <td>Suite</td>
    <td>Runs only...</td>
    <td>Excludes (~)</td>
  </tr>
  <tr>
    <td>default</td>
    <td>@safe  </td>
    <td>@destructive</td>
  </tr>
  <tr>
    <td>dev</td>
    <td>Everything</td>
    <td>@live @launch</td>
  </tr>
  <tr>
    <td>deploy</td>
    <td>@safe @deploy </td>
    <td>@destructive @dev @launch @live</td>
  </tr>
  <tr>
    <td>launch</td>
    <td>@safe @launch </td>
    <td>@destructive @dev @deploy @live </td>
  </tr>
  <tr>
    <td>live</td>
    <td>@safe @live @launch </td>
    <td>@destructive @dev @deploy </td>
  </tr>
  <tr>
    <td>all</td>
    <td>Everything!</td>
    <td>Nothing!</td>
  </tr>
</table>


## Directory Structures 

Separate products and sites into subdirectories


    linky_clicky
    |--environment
    |--products
    	|--productname
	    	|--features
		    	|--featurename.feature
    |--sites
		| --sitename
			|--behat.yml
			|--behat.local.yml
			|--features
				|--featurename.feature
				|--bootstrap
					|--FeatureContext.php
					|--SWSFeatureContext.php
					|--SWSDrupalContext.php
					|--SWSMinkContext.php
    |--includes
	    |--features
	    	|--namespace
	    	  |--feature
	    	  	|--featurename.feature
    |--uat
   


## Conventions for Naming Structures

* Select feature and feature directory names based on the corresponding functionality,  site, and/or module.

* If there are multiple files corresponding to a particular Drupal Feature, put them in a directory named for the feature.

* If your Behat feature/directory can be used across multiple products or sites, it should reside in the includes directory

* If your Behat feature/directory is customized for a product or site, it should reside in the product or site directory 

* Namespace any feature that is specific to a product or site by pre-pending it with the site or product name.

* Should the directory structure in the Behat includes directory mirror the structure on Github?

<table>
  <tr>
    <td>Structure</td>
    <td>Naming convention</td>
  </tr>
  <tr>
    <td>Product or Site Directory</td>
    <td> site name | product name 
Ex: jse or caw</td>
  </tr>
  <tr>
    <td>Feature Directory</td>
    <td>functionality | module name
Ex. Roles or private_pages </td>
  </tr>
  <tr>
    <td>Custom Feature 
(in site or product directory)</td>
    <td>[product|site][_module name][_functionality].feature
Ex. jse_news.feature or caw_menus.feature</td>
  </tr>
  <tr>
    <td>General Feature 
(in includes directory)</td>
    <td>[module name]_[functionality].feature
Ex. private_pages_administration.feature</td>
  </tr>
</table>


### Behat Feature Naming convention

[module name]_[functionality].feature - This feature would be located in the includes directory. The product or site directory would then have symlinks to the feature.

[product|site]_[module name]_[functionality].feature - This product or site specific feature would be located in the product or site directory

## Versioning - Handled on a per site, per product basis

An individual site is deployed with specific versions of modules, and the Behat feature files or scenarios should correspond with the correct version of a feature for that site. When a site is deployed and the @deploy tests succeed, all @safe scenarios corresponding to that site should be copied into the Behat directory for that site. 

However, a product in development would work with the latest Behat versions. Presumably, these work with the latest versions of the modules and Drupal features. If a development diverges and Behat tests fail, either break the tests into separate files and exclude the failing tests, or don’t link to the test and create a product specific set of tests. The directory for a product then will either contain files specific to that product, or link to the corresponding Behat features.

In the future, consider:  [https://www.drupal.org/project/behatrunner](https://www.drupal.org/project/behatrunner)

## Communications

Product owners/developers should be kept informed about changes to tests in the includes directory. This would include new tests and breaking tests into more specialized files. 

- Part of the staff meeting agenda?

## Tips and Best Practices

If you don’t specify a suite it’ll run all sorts of test, and take *forever*. Specify a suite!

### Test coverage

The more tests that we have, the more that we get to maintain. At the same time, we want to verify that a site is healthy and functions as expected after getting deployed and after a feature update or security updates. 

We have two types of testing:

* New functionality - where we verify a change on a site

* Regression - where we verify that nothing unexpected has changed.

After creating new functionality, ideally you’ll have a new test to verify that the functionality is deployed as expected. Once functionality has been tagged, we may not need fine-grained test for functionality, and we may want to modify or prune this test. This is where the regression testing comes into play. The focus in regression testing is to create tests that identify possibly larger problems, such as a formerly enabled module is now disabled.

### Types of tests for a feature module

@dev and @destructive

* can all users create, edit & delete?

@deploy

* Placeholder content imported successfully (test for URL, image and body exist)

@launch

* Placeholder content has been removed. (No fodder for Drupal search...)

@safe

* all the modules were enabled

* Roles exist

* All roles can navigate to create and edit pages (no saving allowed!)

### For a launched site

If the tests for a launched site differs from the @safe tests for the product, it’s time to give that site it's own directory and set of tests. The new tests should verify how a site differs from its product install such as a disabled module, new menu structure, and any new functionality.

### Avoid destructive tests surprises

Tests such as "Given the module is enabled" will enable a module. However, we want the test to fail if the module is not enabled. This test will not let us know if the module was not enabled in the first place. Such a step is deceptive and should be used only after we know the module was enabled as expected.

### Aim for @safe!

If a feature is @safe, it will most likely succeed on a production site. We want good tests for production sites. If you create a @dev test that creates and saves a node, also create a @safe test that verifies that the current user can see the "create node" page. 

### Keep Homepage and custom page tests at the site/product level

Homepage testing belongs with a product, site, or homepage module (ex. stanford_jumpstart_home). A feature should not test for pages outside the feature such as functionality on homepage.  This functionality should belong in the the site or product directory. For example, testing that the news block displays properly on the home page belongs in the homepage tests, not the tests for that module

### Lessons Learned

#### When Creating Suites

* The "all" suite does not accept tags.

* Including the ~ doesn’t work. Unless it is the only tag in the list, It doesn’t exclude the tag 

## Summary

Testing needs for SWS range from features to products to sites. Adopting best practices will help keep a minimal, effective set of tests. 

