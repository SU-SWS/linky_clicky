@api
Feature: Stanford News Views
  In order to verify that the views are viewable and functioning
  As an end user
  I want to check for the existence of news pages and content on views pages

  Background:
    Given I am logged in as a user with the "administrator" role

  @safe
  Scenario: Views are available
    Given I am on "admin/structure/views"
    Then I should see "News"
    Then I should see "News: Manage"

  @safe
  Scenario: News view displays are available
    Given I am on "admin/structure/views/view/stanford_news/edit"
    Then I should see "Feed"
    Then I should see "2 Item Recent News List"
    Then I should see "5 Item News List Block"
    Then I should see "5 Item News List Page"
    Then I should see "3 Item News List Block"

  @safe
  Scenario: News admin view displays are available
    Given I am on "admin/structure/views/view/admin_manage_stanford_news_item/edit"
    Then I should see "Page"

  @safe
  Scenario: Manage view operations are available
    Given I am on "admin/manage/stanford_news_item"
    Then I should see 1 "#edit-title" element
    Then I should see 1 "#edit-status" element
    Then I should see 1 "#edit-tid" element
    Then I should see 1 "#edit-submit-admin-manage-stanford-news-item" element
    Then I should see 1 "#edit-reset" element
    Then I should see 1 "#edit-operation" element
    Then I select "Delete" from "edit-operation"
    Then I select "Modify" from "edit-operation"
    Then I select "Publish" from "edit-operation"
    Then I select "Unpublish" from "edit-operation"

  @safe
  Scenario: The user facing views are available
    Given I am on "news.xml"
    Given I am on "news/recent-news"
    Then I should see "Recent News"
    Then I should see 1 ".view-stanford-news" element
