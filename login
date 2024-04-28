<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <style>
        body {
            background-color: black;
            color: white;
            font-family: Arial, sans-serif;
            text-align: center;
            margin-top: 100px;
        }

        h1,
        h2 {
            color: red;
        }

        input[type="text"] {
            padding: 10px;
            border: 2px solid red;
            background-color: black;
            color: red;
            margin-top: 20px;
            border-radius: 5px;
        }

        input[type="submit"] {
            padding: 10px 20px;
            background-color: black;
            color: red;
            border: 2px dotted red;
            cursor: pointer;
            border-radius: 5px;
        }

        input[type="submit"]:hover {
            background-color: darkred;
        }

        .message {
            margin-top: 20px;
        }

        .granted {
            color: green;
        }

        .invalid {
            color: red;
        }
    </style>
</head>

<body>
    <h1>OnKrak</h1>
    <h2>Welcome to OnKrak, please input your key.</h2>
    <form id="loginForm" onsubmit="checkLogin(); return false;">
        <input type="text" id="key" placeholder="Enter Key">
        <input type="submit" value="Submit">
    </form>
    <div id="message" class="message"></div>

    <script>
        function checkLogin() {
            var keyInput = document.getElementById("key").value;
            var keys = ["T25LcmFrIG93bnMgeW91LCBKZWZjb2Vk", "a2V5Zm9ybGV2aQ", "am9zaGtleTk5"]; 

            if (keys.includes(keyInput)) {
                document.getElementById("message").innerText = "Access Granted";
                document.getElementById("message").className = "message granted";
                setTimeout(function() {
                    window.location.href = "Xsite.com"; 
                }, 2000); // Redirect after 2 seconds
            } else {
                document.getElementById("message").innerText = "Invalid";
                document.getElementById("message").className = "message invalid";
            }
        }
    </script>
</body>

</html>
