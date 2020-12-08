from ip2geotools.databases.noncommercial import DbIpCity
#this works with public ip not local ip
ip = input("Enter your ip :")
response = DbIpCity.get(ip, api_key="free")
print("\n")
print("********************")

print("Your Country is : {0}".format(response.country))

print("\n")
print("********************")

print("Your City is : {0}".format(response.city))

print("\n")
print("********************")

print("Your Longitude is : {0}".format(response.longitude))

print("**************************************************") 
import requests
#location details via ispprovider
try:
    data = requests.get('https://ipinfo.io/json')
    data = data.json()
    print(data)
    print(f'Cityname via ISP is {data["city"]}')
except:
    print("Some Error Occured!")
