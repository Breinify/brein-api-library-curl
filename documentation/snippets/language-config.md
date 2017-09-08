<blockquote class="lang-specific shell">
<p>When using the command line to request or provide data, there is no
special configuration needed.</p>
</blockquote>

<blockquote class="lang-specific shell">
<p><b>Note:</b> In the following examples, none of the requests is using
a verification signature. If your API key is configured to use a verification
signature, you have to add a signature to each request.</p>
</blockquote>

>
```shell
 # create the signature for a message sent at 1504832119 (unix time-stamp)
 $ echo -n "1504832119--" | openssl dgst -binary -sha256 -hmac "utakxp7sm6weo5gvk7cytw==" | openssl enc -base64
 eaAPIRpDxxt3uk7TCqScnE7xcPacT9YERwNOedvmSS0=

 # now use the signature to send in the request
 $ curl --ipv4 -X POST https://api.breinify.com/temporaldata \
 	 -H "cache-control: no-cache" \
 	 -H "Content-Type: text/json; charset=utf-8" \
 	 -d '{ "apiKey": "938D-3120-64DD-413F-BB55-6573-90CE-473A", "signature": "eaAPIRpDxxt3uk7TCqScnE7xcPacT9YERwNOedvmSS0=", "unixTimestamp": 1504832119, "user": {} }'
```