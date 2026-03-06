import qrcode
import argparse
import os

parser = argparse.ArgumentParser()
parser.add_argument("--url", required=True)
args = parser.parse_args()

url = args.url

if not os.path.exists("qr_codes"):
    os.makedirs("qr_codes")

img = qrcode.make(url)

filename = url.replace("https://","").replace("http://","").replace("/","_")
filepath = f"qr_codes/{filename}.png"

img.save(filepath)

print(f"QR Code generated and saved at {filepath}")