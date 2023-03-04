package com.cydeo.step_definitions;


import com.cydeo.pages.CRM_Page;
import com.cydeo.utilities.ConfigurationReader;
import com.cydeo.utilities.Driver;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;

public class CRM_credentials_StepDefinitions {

    CRM_Page crmPage = new CRM_Page();

    @Given("user is on the CRM login page")
    public void user_is_on_the_crm_login_page() {
        Driver.getDriver().get(ConfigurationReader.getProperty("env"));

    }
    @When("user enters valid {string} username")
    public void user_enters_valid_username(String username) {
        crmPage.userLoginBox.sendKeys(username);
    }
    @When("user enters valid {string} password")
    public void user_enters_valid_password(String password) {
      crmPage.userPasswordBox.sendKeys(password);
    }
    @Then("user should be able to save credentials")
    public void user_should_be_able_to_save_credentials() {
       crmPage.rememberMeCheckBox.click();
       //crmPage.loginButton.click();

        Assert.assertTrue(crmPage.rememberMeCheckBoxText.isDisplayed());
        Assert.assertTrue(crmPage.rememberMeCheckBox.isEnabled());
        Assert.assertTrue(crmPage.rememberMeCheckBox.isSelected());

    }


    @Then("user clicks to CRM login button")
    public void userClicksToCRMLoginButton() {
        crmPage.loginButton.click();
    }

    @Given("user should be able to access the Chat and Calls module")
    public void userShouldBeAbleToAccessTheChatAndCallsModule() {
        crmPage.chatAndCallsButton.click();
    }

    @Then("user should be able to see Message, Notification, Settings and Active Stream modules")
    public void userShouldBeAbleToSeeMessageNotificationSettingsAndActiveStreamModules() {
        String expectedMessage = "Message(s) ";
        String expectedNotifications = "Notifications";
        String expectedSettings = "Settings";
        String expectedActivityStream = "Activity Stream ";

        String actualMessage = crmPage.messageModule.getAttribute("title");
        String actualNotifications = crmPage.notificationModule.getAttribute("title");
        String actualSettings = crmPage.settingsModule.getAttribute("title");
        String actualActivityStream = crmPage.activeStreamModule.getAttribute("title");

        Assert.assertEquals(actualMessage, expectedMessage);
        Assert.assertEquals(actualNotifications, expectedNotifications);
        Assert.assertEquals(actualSettings, expectedSettings);
        Assert.assertEquals(actualActivityStream, expectedActivityStream);



    }
}
