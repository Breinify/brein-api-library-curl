<blockquote class="lang-specific shell">
<p>There is no special integration needed to use the commands mentioned here.
The only requirement is <code class="prettyprint">curl</code>, which should be
already available on your OS or should be easy to install (use Google for
instructions on how to install <code class="prettyprint">curl</code> for your
OS).</p>
</blockquote>

<blockquote class="lang-specific shell">
<p><b>Note:</b> The following commands can be used to check if needed
tools are available on your system (i.e., <code class="prettyprint">curl</code>
and <code class="prettyprint">openssl</code> (only needed if signagures are used)).</p>
</blockquote>

>
```shell
 $ curl -s -o /dev/null -w "%{http_code}" https://www.breinify.com
 200

 $ echo -n "Message" | openssl dgst -binary -sha256 -hmac "secret" | openssl enc -base64
 qnR8UCqJggD55PohusaBNviGoOJ67HC6Btry4qXLVZc=
```