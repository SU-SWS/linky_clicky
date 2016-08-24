# Using Linky Clicky

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

5. Authentication Scheme: What approach do we use to authenticate? Native Drupal? Webauth? SamL?

### Lifecycle Phases

Testing for our product development and subsequent sites has a sort of timeline or lifecycle. Which is roughly like this:

    Requirements
        > Development
            > Deployment
                > Customization
                    > Production
                        > Live


For each phase of this lifecycle, we may need a specific set of tests. Although individual tests may overlap between phases, many tests will be relevant only to a particular phase.

#### Requirements

In the requirements phase we define the functionality. This functionality might be for a new or updated product, theme, behavior, content, etc. Ideally, this is the phase in which we identify and draft our first Behat tests.

#### Development

During development we are adding to the functionality of the product, so here’s where we thoroughly test functionality. Since you can expect that the site will get rebuilt, anything goes. In our tests, we can add random content, delete existing pages, change the name of the site, etc.

#### Deployment

The deployment phase signals that we are no longer in development. When we deploy a site for a customer, we need to assume that we fully tested product functionality in development. In this phase we want to ensure that the site was deployed properly. We need to verify that the modules, themes, and content were all enabled and imported properly. We want happy customers!

#### Customization

For some of our clients we build extensive and unique functionality for their site. Although development occurs during this phase, it often occurs in tandem with the production phase on a site and we cannot expect the site to be rebuilt. Testing in the phases verifies functionality yet cannot change anything on the site.

#### Production

In the production phase, as the customer replaces placeholder content, removes and adds pages to the menu, and customizes their site, we use regression testing to verify that changes to the site such as patches and security updates do not break anything on the site. Any testing for this phase here should be safe at all phases of the lifecycle, should be used for regression testing on live sites, and ensure that the site is healthy.

#### Launch

When we launch a site, we perform tasks on the site to prepare it for the public view. Tests at this point would verify if these launch prep tasks were completed properly.

#### Live

Once a site has been launched, its URL changes and pages on the site are open to crawling by search engines. Tests during the live phase would verify these changes. 

## Introducing Behat

If we think of a web site as a city, our Behat tests would then be our guide for to exploring the city. 

As evidenced in the analysis above, our testing needs are complex. We will need to take care in structuring our testing so that we can verify our requirements yet remain DRY. To meet this goal, Behat provides various approaches to structuring our tests. Let’s review these approaches and propose how we can map them to our domain.

### Using Behat

When using Behat to test functionality we need to recognize its capabilities and limitations. 

<table>
  <tr>
    <td>Functionality</td>
    <td>Yes, Some, or No</td>
    <td>Comments</td>
  </tr>
  <tr>
    <td>Behaviour</td>
    <td>Yes</td>
    <td>Behat is able to detect and interact with css and html elements and is ideal for testing behavior.</td>
  </tr>
  <tr>
    <td>Theme</td>
    <td>Some</td>
    <td>As part of the CSS, Behat can detect colors and fonts. However, since it is not designed to detect the relationship between various elements, it is of little help with testing layout and visual aspects. </td>
  </tr>
  <tr>
    <td>Hosting Environment</td>
    <td>TBD</td>
    <td>Tests for hosting environments have not been identified.</td>
  </tr>
  <tr>
    <td>Authentication Scheme</td>
    <td>TBD</td>
    <td>Tests for authentication have not been identified.</td>
  </tr>
</table>


### Linky Clicky
Linky Clicky is Stanford Web Services’ repository for using Behat. 

#### Directory Structure
The Linky Clicky repository is structured as follows:


linky_clicky
>environment
>products
    >productname
        >features
            >featurename.feature
>sites
    >sitename
        >behat.yml
        >behat.local.yml
        >features
            >featurename.feature
            >bootstrap
                >FeatureContext.php
                >SWSFeatureContext.php
                >SWSDrupalContext.php
                >SWSMinkContext.php
>includes
    >features
        >namespace
          >feature
            >featurename.feature
>uat

### Our Organizing Structures for Linky Clicky

#### Profile == Site

A profile defines the configuration for testing a site. Profiles are defined in either a behat.yml or behat.local.yml file which must accessible in the corresponding site or product directory (see “Directory” below).

#### Suite == Lifecycle

A suite represents a group of features together with the information on how to test them. With Linky Clicky the suites correspond to the lifecycle phases. For example, for a newly deployed site, the “deploy” suite will consist of tests such as verifying placeholder pages, content, and menu structure. We’ll delve more into suites below.

#### Directory == Product or Customized Site

By default, Behat executes the tests in the 'features' directory within the current directory. Linky Clicky is structured so that each product or customized site has it's own directory. Then, within each product or site directory we have a features directory (see the Directory Structure above) to identify test files and directories of test files that are appropriate for that product or site. 
The test files and directories reside either within or are symlinked from a features directory. When test files and directories are unique to the site they reside directly in the features directory. However, if the tests can be shared across products and sites, the test files and directories are symlinked. The "includes" directory at ‘linky_clicky/includes/’ holds these shared test files and directories. 

#### Feature (file) == Functionality

Behat Features are the human-readable stories that describe and test the behavior of your application. It is with these Behat features that we can verify requirements for a site. 

Each Behat feature resides in its own file (*.feature) and is either symlinked or located in the ‘features’ directory for a product or site. To learn more about writing Behat features see [Features and Scenarios] (http://docs.behat.org/en/v3.0/user_guide/features_scenarios.html).

##### Behat features for each Drupal modules
When testing the functionality of a Drupal module each Drupal module that can be enabled or disabled should correspond to a Behat feature file. For example, if you are testing a content type, say "Stanford Private Page," the corresponding Behat feature might be “stanford_private_page.feature.” Whereas if you are testing the “manage content” functionality for Stanford Private Page, the corresponding feature would be “stanford_private_page_administration.feature.” 

##### Behat features to verify specific functionality
Additionally, we have functionality that transcends a Drupal Module.  For example, for a custom site, we might want to we roll out a site then disable the Drupal modules that the client doesn’t need. This functionality should be encapsulated into a Behat feature file that tests functionality for the custom site.
Other areas of specific functionality testing:
* Menus - Verify the menu structure is correctly organized 
* Specific pages - Verify the existence and content of pages such as about, courses, research, academics, and homepages.
* Roles- Verify which permissions each role (site owner, site member, editor) has on a product or custom site
* Assets and treatments - Verify the existence of logos, fonts, color

#### Tags == Lifecycle

Tags provide a great way to organize your features and scenarios. Tags can be used to identify the lifecycle phase to which this scenario or feature applies. We’ll delve more into tags below.

#### Scenarios == Functionality

Consisting of one or more steps, scenarios map to requirements and phases of the lifecycle. Tags associated with scenarios identify the lifecycle phases targeted by the scenario. Each scenario should stand alone. That is, it doesn’t depend on the actions of a previous scenario. If setting up the scenario gets too cumbersome for multiple scenarios, look into using backgrounds and scenario outlines. To learn more about using scenarios and their cousin scenario outlines, see the [documentation] (http://docs.behat.org/en/v3.0/guides/1.gherkin.html#scenarios).

#### Steps == Functionality

In Behat ‘steps’ are the building blocks of scenarios. Using human readable phrases and beginning with words such as Given, When, and Then, each step plays a part in navigating and verifying functionality. To learn more about Behat steps see the [documentation] (http://docs.behat.org/en/v3.0/guides/1.gherkin.html#steps).

### More on Tags

Tags enable specific tests to be executed. You can place any label on a tag and specify that tag during execution by using the "--tags @tagname" command. However, our features and scenarios can drown in tag soup if we aren't careful. Using a set number of tags can help prevent this issue. The following tagging structure is what Stanford Web Services uses:

#### Lifecycle Tags - *Required for every scenario*

All scenarios are tagged with a *single* lifecycle tag.

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
    <td>Useful for tests that can work on dev, deploy, production, launch, and live sites. These tests may not create any content, change any settings, or leave any trace that it has run. Note: some Scenarios tagged as @safe clear the cache. We have labeled clearing the cache as a "safe" operation.
    Example: Verifies that
    * The proper modules are enabled
    * Roles exist
    * Users with appropriate roles can view, create, and edit pages (no saving allowed!)</td>
  </tr>
  <tr>
    <td>@launch</td>
    <td>Useful for testing that placeholder content has been removed.
    Example: Verifies that all placeholder content has been removed. (No fodder for Drupal search...)</td>
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
    <td>This tag indicates that the scenario may change configuration or leave lasting items/content/config on the site it is running on. Unless a scenario is tagged with @destructive it is assumed it will not make destructive changes to the site. 
    Only used with @dev. Not safe for production sites.
    Example: Verifies that users with the administrator role can create, edit and delete</td>
  </tr>
  <tr>
    <td>@javascript</td>
    <td>For executing javascript on the page. </td>
  </tr>
  <tr>
    <td>@api</td>
    <td>Needed when logging into the site. For example, when testing functionality for Site Owner or Editor. </td>
  </tr>
</table>

If you want to explore other uses of tags, [Learn about d.o tags] (https://www.drupal.org/node/1780048).

### More on Suites

Suites target the various phases of the product and site life cycles.

<table>
  <tr>
    <td>Suite</td>
    <td>Runs only...</td>
    <td>Excludes (~)</td>
  </tr>
  <tr>
    <td>default</td>
    <td>@safe</td>
    <td>@destructive</td>
  </tr>
  <tr>
    <td>dev</td>
    <td>@safe @deploy @dev @destructive</td>
    <td>@live @launch</td>
  </tr>
  <tr>
    <td>deploy</td>
    <td>@safe @deploy</td>
    <td>@destructive @dev @launch @live</td>
  </tr>
  <tr>
    <td>launch</td>
    <td>@safe @launch</td>
    <td>@destructive @dev @deploy @live</td>
  </tr>
  <tr>
    <td>live</td>
    <td>@safe @live @launch</td>
    <td>@destructive @dev @deploy</td>
  </tr>
  <tr>
    <td>all</td>
    <td>Everything!</td>
    <td>Nothing!</td>
  </tr>
</table>
  
## Conventions for Naming Structures

* Select feature and feature directory names based on the corresponding functionality, site, and/or module.

* If there are multiple files corresponding to a particular Drupal Feature, put them in a directory named for the feature.

* If your Behat feature/directory can be used across multiple products or sites, it should reside in the includes directory

* If your Behat feature/directory is customized for a product or site, it should reside in the product or site directory

* Namespace any feature that is specific to a product or site by pre-pending it with the site or product name.

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

Software is rarely static. We are constantly fixing bugs and adding new features. When it comes to Behat tests, we need to take this into account.

When a site is launched, it has specific versions of functionality and Drupal modules, and at that point in time, the Behat features will correspond to those. So, when a custom site is deployed and the “live” suite of tests succeed, all the @safe and @live scenarios corresponding to that site should be copied into the Behat directory for that site, thereby linking the appropriate Behat tests with the correct versions of functionality and Drupal modules.

However, a product in development should work with the latest Behat versions. Presumably, these work with the latest versions of the modules and Drupal features. If a development diverges and Behat tests fail, either break the tests into separate files and exclude the failing tests, or don’t link to the test and create a product specific set of tests. The directory for a product then will either contain files specific to that product, or link to the corresponding Behat features.

In the future, consider:  [https://www.drupal.org/project/behatrunner](https://www.drupal.org/project/behatrunner)

## Communications

Product owners/developers should be kept informed about changes to tests in the includes directory. This would include new tests and breaking tests into more specialized files.

## Tips and Best Practices

Specify a suite and the feature directory! If you don’t,  it’ll run the same tests multiple times, and take *forever*.

### Test coverage

The more tests that we have, the more that we get to maintain. At the same time, we want to verify that a site is healthy and functions as expected after getting deployed and after a feature update or security updates.

We have two types of testing:
* New functionality - where we verify a change on a site
* Regression - where we verify that nothing unexpected has changed.

After creating new functionality, ideally you’ll have a new test to verify that the functionality is deployed as expected. Once functionality has been tagged, we may not need fine-grained test for functionality, and we may want to modify or prune this test. This is where the regression testing comes into play. The focus in regression testing is to create a set of tests that run fairly quickly and identify multiple problems.

### For a launched site

If the tests for a launched site differs from the @safe tests for the product, it’s time to give that site it's own directory and set of tests. The new tests should verify how a site differs from its product install such as a disabled module, new menu structure, and any new functionality.

### Avoid destructive tests surprises

Tests such as "Given the module is enabled" will enable a module. However, we want the test to fail if the module is not enabled. This test will not let us know if the module was not enabled in the first place. Such a step is deceptive and should be used only after we know the module was enabled as expected.

### Aim for @safe!

If a feature is @safe, it will most likely succeed on a production site. We want good tests for production sites. If you create a @dev test that creates and saves a node, also create a @safe test that verifies that the current user can see the "create node" page.

### Keep page tests at the site/product level

 A Behat feature should not test for pages outside that features domain. For example, Homepage testing belongs with a product, site, or homepage module (ex. stanford_jumpstart_home), and belongs in the the site or product directory. For example, testing that the news block displays properly on the home page belongs in the homepage tests, not the tests for the news module.

### Lessons Learned

* In Behat 3, the "all" suite does not accept tags.
* Since some scenarios belonging to different lifecycle phases are mutually exclusive and contradict each other, the “all” suite as it is defined for Linky Clicky will not run successfully for any site,
* Including the ~ to exclude tags doesn’t always work. Unless it is the only tag in the list, it may not exclude the tag


## Conclusion

Our goals are to ensure requirements are met. At the same time we want sustainable testing practices. By understanding the lifecycle of a site we can develop testing scenarios, tags, suites, and directory structures that both verify requirements and allow sustainable test development. Adopting best practices will help keep Linky Click to a minimal, effective set of tests.


See [README] (https://github.com/SU-SWS/linky_clicky/blob/5.x/README.md)

See [Running Linky Clicky] (https://github.com/SU-SWS/linky_clicky/blob/5.x/RunningLinkyClicky.md)
