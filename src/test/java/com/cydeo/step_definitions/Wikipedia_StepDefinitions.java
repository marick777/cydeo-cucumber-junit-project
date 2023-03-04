package com.cydeo.step_definitions;

import com.cydeo.pages.WikiResultPage;
import com.cydeo.pages.WikiSearchPage;
import com.cydeo.utilities.BrowserUtils;
import com.cydeo.utilities.Driver;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;

public class Wikipedia_StepDefinitions {

    WikiSearchPage wikiSearchPage = new WikiSearchPage();
    WikiResultPage wikiResultPage = new WikiResultPage();

    @Given("User is on Wikipedia home page")
    public void user_is_on_wikipedia_home_page() {
        Driver.getDriver().get("https://wikipedia.com");
    }
    @When("User types {string} in the wiki search box")
    public void user_types_steve_jobs_in_the_wiki_search_box(String searchValue) {
    wikiSearchPage.searchBox.sendKeys(searchValue);
    }
    @When("User clicks wiki search button")
    public void user_clicks_wiki_search_button() {
    wikiSearchPage.searchButton.click();
    }
    @Then("User sees {string} is in the wiki title")
    public void user_sees_steve_jobs_is_in_the_wiki_title(String expectedTitle) {
        BrowserUtils.verifyTitleContains(expectedTitle);
    }

    @Then("User sees {string} is in the main header")
    public void user_sees_steve_jobs_is_in_the_main_header(String mainHeader) {
        Assert.assertEquals(wikiResultPage.mainHeader.getText(), mainHeader);
    }

    @Then("User sees {string} is in the image header")
    public void user_sees_steve_jobs_is_in_the_image_header(String imgHeader) {
        Assert.assertEquals(wikiResultPage.imageHeader.getText(), imgHeader);
    }

}
