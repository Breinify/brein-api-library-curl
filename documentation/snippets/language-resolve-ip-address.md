<blockquote class="lang-specific shell">
<p>This example shows how to resolve temporal information for a specific ip-address.</p>
</blockquote>

>
```shell
 $ curl --ipv4 -X POST https://api.breinify.com/temporaldata \
	 -H "cache-control: no-cache" \
	 -H "Content-Type: text/json; charset=utf-8" \
	 -d '{ "apiKey": "938D-3120-64DD-413F-BB55-6573-90CE-473A", "user": { "additional": { "ipAddress": "72.229.28.185" } } }'
```