// You can include npm dependencies for support files in tests/cucumber/package.json
var _ = require('underscore');

module.exports = function () {

    // You can use normal require here, cucumber is NOT run in a Meteor context (by design)
    var url = require('url');

    // Preconditions
    // -------------
    this.Given(/^I am a new user$/, function () {
        // server.call('reset'); // server is a connection to the mirror
        // server.call('reset'); // server is a connection to the mirror
    });

    this.Given(/^I am not connected$/, function () {
        browser.url(process.env.ROOT_URL+"/logout");
        browser.url(process.env.ROOT_URL+"/login");
    });

    // Actions
    // -------
    this.When(/^I navigate to "([^"]*)"$/, function (relativePath) {
        // process.env.ROOT_URL always points to the mirror
        // client.url(url.resolve(process.env.ROOT_URL, relativePath));
        client.url(url.resolve(process.env.ROOT_URL, relativePath));
    });

    this.Then(/^I should see the title "([^"]*)"$/, function (expectedTitle) {
        // no callbacks, no promises, just simple synchronous code!
        client.waitForExist('title',4000);
        expect(client.getTitle()).toEqual(expectedTitle); // using Jasmine's assertion library
    });

    this.Then(/^I should see the button "([^"]*)"$/, function (btn) {
        client.waitForExist(btn);
    });

    this.Then(/^I should see the field "([^"]*)"$/, function (btn) {
        client.waitForExist(btn);
    });

    this.Then(/^I should see the link "([^"]*)"$/, function (btn) {
        // = is exactly equal
        // != is not equal
        // ^= is starts with
        // $= is ends with
        // *= is contains
        // ~= is contains word
        // |= is starts with prefix (i.e., |= "prefix" matches "prefix-...")
        client.waitForExist('a[href$="'+btn+'"]');
    });

    // this.Then(/^Then I should see number images  "([^"]*)"$/, function (btn) {
    //  assert_equal( $('img').length , btn ) ;
    // });

    this.Then(/^I try to connect with username "([^"]*)" and password "([^"]*)"$/, function (user, pass) {
        client.waitForExist('.btn.btn-danger.btn_login',4000);
        browser.setValue('input[name=email]', user);
        browser.setValue('input[name=password]', pass);
        // browser.click('#login-button');
        client.waitForExist('.btn_login',4000);
        browser.click('.btn_login');
        // browser.waitForExist('body *');
        // browser.waitForVisible('body *');
        // browser.click('#logout-button-footer');
    });

    this.Then(/^I click on the button "([^"]*)"$/, function (btn) {
        client.waitForExist(btn,4000);
        browser.click(btn);
    });
    // Inputs
    this.Then(/^I fill the field "([^"]*)" with value "([^"]*)"$/, function (input, value) {
        browser.setValue(input, value);
        //browser.click(".btn.btn-danger.btn_login");
    });

    this.Then(/^I should see class "([^"]*)"$/, function (classtName) {
        client.waitForExist(classtName,4000);
    });
    // compare url
    This.Then(/^I should see url "([^"]*)"$/, function (url) {
        var currenturl = browser.getTitle();
        expect(url).toEqual(url);
    });

    /// see text
    this.Then(/^I should see text "([^"]*)"$/, function (text) {
        client.waitForExist(text,4000);
    });

    // shear contant by facebook

    // this.Then(/^I should see the content shared social media profile "([^"]*)"$/, function (socail) {
        
    // });


};
