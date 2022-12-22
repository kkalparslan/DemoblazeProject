package com.demoblaze.step_definitions;

import com.demoblaze.pages.LoginPage;
import com.demoblaze.pages.ProductPage;
import com.demoblaze.utilities.ConfigurationReader;
import com.demoblaze.utilities.Driver;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

import java.util.Map;

public class Login_StepDefs {

    LoginPage loginPage=new LoginPage();
    ProductPage productPage=new ProductPage();
    @Given("The user is on the login page")
    public void the_user_is_on_the_login_page() {
        Driver.get().get(ConfigurationReader.get("url"));
    }
    @When("The user enters valid credentials")
    public void the_user_enters_valid_credentials() {
        loginPage.loginMethod();
    }
    @Then("Verify {string}")
    public void verify(String expectedUsername) {
        productPage.verifyLogin_mtd(expectedUsername);
    }

    @When("The user enters {string} and {string} and click login button")
    public void the_user_enters_and_and_click_login_button(String username, String password) {
        loginPage.loginMethod(username, password);
    }

    @When("The user enters valid username and password")
    public void theUserEntersValidUsernameAndPassword(Map<String,String> userInfo) {
        loginPage.loginMethod(userInfo.get("username"),userInfo.get("password"));
    }
    @Then("Verify that invali {string}")
    public void verifyThatInvali(String expectedMessage) {
        loginPage.verifyNegativeLoginMessage(expectedMessage);
    }
}