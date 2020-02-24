Feature: Block Paths
  In order to ensure that malicious actors cannot cause service disruptions by probing for vulnerabilities
  As an anonymous user
  I want to try to access a list of known vulnerable paths and be blocked by Apache

  @api
  Scenario: Block WordPress paths
    Given I am an anonymous user
    And the cache has been cleared
    And I am on "wp-cron.php"
    Then the response status code should be 403
    # We want to make sure that this request does not bootstrap Drupal.
    And the response header should not have "X-Drupal-Cache"
    When I am on "wp-config.php"
    Then the response status code should be 403
    # We want to make sure that this request does not bootstrap Drupal.
    And the response header should not have "X-Drupal-Cache"
    When I am on "wp-login.php"
    Then the response status code should be 403
    # We want to make sure that this request does not bootstrap Drupal.
    And the response header should not have "X-Drupal-Cache"
    When I am on "wp-signup.php"
    Then the response status code should be 403
    # We want to make sure that this request does not bootstrap Drupal.
    And the response header should not have "X-Drupal-Cache"
    When I am on "wp-content/plugins/hello.php"
    Then the response status code should be 403
    # We want to make sure that this request does not bootstrap Drupal.
    And the response header should not have "X-Drupal-Cache"
    When I am on "wp-content/plugins/index.php"
    Then the response status code should be 403
    # We want to make sure that this request does not bootstrap Drupal.
    And the response header should not have "X-Drupal-Cache"
    # Check for wildcard coverage.
    When I am on "wp-content/plugins/[random]"
    Then the response status code should be 403
    # We want to make sure that this request does not bootstrap Drupal.
    And the response header should not have "X-Drupal-Cache"
    When I am on "wp-admin/index.php"
    Then the response status code should be 403
    # We want to make sure that this request does not bootstrap Drupal.
    And the response header should not have "X-Drupal-Cache"
    # Check for wildcard coverage.
    When I am on "wp-admin/[random]"
    Then the response status code should be 403
    # We want to make sure that this request does not bootstrap Drupal.
    And the response header should not have "X-Drupal-Cache"
    When I am on "wp-includes/query.php"
    Then the response status code should be 403
    # We want to make sure that this request does not bootstrap Drupal.
    And the response header should not have "X-Drupal-Cache"
    # Check for wildcard coverage.
    When I am on "wp-includes/[random]"
    Then the response status code should be 403
    # We want to make sure that this request does not bootstrap Drupal.
    And the response header should not have "X-Drupal-Cache"


  @api
  Scenario: Block other paths that are targeted by malicious bots
    Given I am an anonymous user
    And the cache has been cleared
    And I am on "js/jQuery/uploadify/uploadify.php"
    Then the response status code should be 403
    # We want to make sure that this request does not bootstrap Drupal.
    And the response header should not have "X-Drupal-Cache"
    # Check for wildcard coverage.
    When I am on "[random]/[random]/uploadify.php"
    Then the response status code should be 403
    # We want to make sure that this request does not bootstrap Drupal.
    And the response header should not have "X-Drupal-Cache"
    When I am on "adm/liveeditor/assetmanager/server/upload.php"
    Then the response status code should be 403
    # We want to make sure that this request does not bootstrap Drupal.
    And the response header should not have "X-Drupal-Cache"
    # Check for wildcard coverage.
    When I am on "[random]/[random]/[random]/upload.php"
    Then the response status code should be 403
    # We want to make sure that this request does not bootstrap Drupal.
    And the response header should not have "X-Drupal-Cache"
    When I am on "adm/ujadmin/vendor/phpunit/phpunit/src/Util/PHP/eval-stdin.php"
    Then the response status code should be 403
    And the response header should not have "X-Drupal-Cache"
    When I am on "adm/uddi/uddilistener/vendor/phpunit/phpunit/src/Util/PHP/eval-stdin.php"
    Then the response status code should be 403
    # Check for wildcard coverage.
    When I am on "[random]/eval-stdin.php"
    Then the response status code should be 403
    # We want to make sure that this request does not bootstrap Drupal.
    And the response header should not have "X-Drupal-Cache"
    When I am on "adm/scripts/elfinder/connectors/php/connector.minimal.php"
    Then the response status code should be 403
    # We want to make sure that this request does not bootstrap Drupal.
    And the response header should not have "X-Drupal-Cache"
    # Check for wildcard coverage.
    When I am on "[random]/[random]/connector.minimal.php"
    Then the response status code should be 403
    # We want to make sure that this request does not bootstrap Drupal.
    And the response header should not have "X-Drupal-Cache"
    When I am on "uddilistener/vendor/phpunit/phpunit/src/Util/PHP/sssp.pHp5"
    Then the response status code should be 403
    # We want to make sure that this request does not bootstrap Drupal.
    And the response header should not have "X-Drupal-Cache"
    # Check for wildcard coverage.
    When I am on "[random]/[random]/sssp.pHp5"
    Then the response status code should be 403
    # We want to make sure that this request does not bootstrap Drupal.
    And the response header should not have "X-Drupal-Cache"
    When I am on "plugins/vendor/phpunit/phpunit/src/Util/PHP/sssp.php.fla"
    Then the response status code should be 403
    # We want to make sure that this request does not bootstrap Drupal.
    And the response header should not have "X-Drupal-Cache"
    # Check for wildcard coverage.
    When I am on "[random]/[random]/sssp.php.fla"
    Then the response status code should be 403
    # We want to make sure that this request does not bootstrap Drupal.
    And the response header should not have "X-Drupal-Cache"
    When I am on "plugins/vendor/phpunit/phpunit/src/Util/PHP/sssp.php.pjpeg"
    Then the response status code should be 403
    # We want to make sure that this request does not bootstrap Drupal.
    And the response header should not have "X-Drupal-Cache"
    # Check for wildcard coverage.
    When I am on "[random]/[random]/sssp.php.pjpeg"
    Then the response status code should be 403
    # We want to make sure that this request does not bootstrap Drupal.
    And the response header should not have "X-Drupal-Cache"
    When I am on "uddilistener/vendor/phpunit/phpunit/src/Util/PHP/sssp.phtml"
    Then the response status code should be 403
    # We want to make sure that this request does not bootstrap Drupal.
    And the response header should not have "X-Drupal-Cache"
    When I am on "typo3/vendor/phpunit/phpunit/src/Util/PHP/sssp.phtml"
    Then the response status code should be 403
    # We want to make sure that this request does not bootstrap Drupal.
    And the response header should not have "X-Drupal-Cache"
    # Check for wildcard coverage.
    When I am on "[random]/[random]/sssp.phtml"
    Then the response status code should be 403
    # We want to make sure that this request does not bootstrap Drupal.
    And the response header should not have "X-Drupal-Cache"
