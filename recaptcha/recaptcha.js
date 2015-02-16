var http = require("http");

var site_key = "SITE_KEY",
    secret_key = "SECRET_KEY",
    verify_url = "https://www.google.com/recaptcha/api/siteverify";

exports.captcha = function() {
  html = '<div class="g-recaptcha" data-sitekey="' + site_key + '"></div>'
  return {
  html: html
  }
}

exports.validate = function(options,params,errors){
// Check the response. Will only get a response if has been validated on the client side first
// http://stackoverflow.com/questions/27297067/google-recaptcha-how-to-get-user-response-and-validate-in-the-server-side
  var response_string = request.params['g-recaptcha-response'],
      my_url = verify_url + "?secret=" + secret_key + "&response=" + response_string + "&remoteip=" + request.ip,
      response = http.get(my_url);
  
  if (response["success"] == false) {
    errors.captcha = "Error validating captcha";
  }
  
  // For debugging purposes:
  // log( JSON.stringify(response));
}
