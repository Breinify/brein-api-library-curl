<blockquote class="lang-specific shell">
<p>When retrieving temporal data, it is necessary to provide some information
via the data-body (using a POST request). These information include: your API key,
a user instance specifying known information, and a signature if the API key uses
verification signatures.</p>
</blockquote>

<blockquote class="lang-specific shell">
<p>The first example uses the requesting ip-address to lookup temporal information.</p>
</blockquote>

>
```shell
 # if no verification signature is needed, you can retrieve information like that
 $ curl --ipv4 -X POST https://api.breinify.com/temporaldata \
	 -H "cache-control: no-cache" \
	 -H "Content-Type: text/json; charset=utf-8" \
	 -d '{ "apiKey": "938D-3120-64DD-413F-BB55-6573-90CE-473A", "user": {} }'
```

<blockquote class="lang-specific shell">
<p>It is also possible to lookup temporal information for a specific IP address.</p>
</blockquote>

>
```shell
 $ curl --ipv4 -X POST https://api.breinify.com/temporaldata \
 	 -H "cache-control: no-cache" \
 	 -H "Content-Type: text/json; charset=utf-8" \
	 -d '{ "apiKey": "938D-3120-64DD-413F-BB55-6573-90CE-473A", "user": { "additional": { "ipAddress": "204.28.127.66" } } }'
```

<blockquote class="lang-specific shell">
<p>There are multiple other values that can be passed in to determine temporal information about
a specific location and/or time.</p>
</blockquote>