This form uses a Foundation 5 reveal modal. It uses javascript/jQuery to intercept a standard HTML form submission and process it asynchronously so that there is no page refresh for the end user (see: http://www.webpop.com/docs/tutorials/submitting-a-form-via-ajax)

Problem with the tutorial version above is that any files are not sent through with the form submission.  A way around this is to use the FormData javascript object: https://developer.mozilla.org/en-US/docs/Web/Guide/Using_FormData_Objects

The javascript is client-side so it's not an extension. Just load it as with other js files in the layout template :)
NOTE: FormData is not available for IE9 and below.
