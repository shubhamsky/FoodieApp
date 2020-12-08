# import requests
# r = requests.get('https://get.geojs.io/')
# print(r)
# ip_request = requests.get('https://get.geojs.io/v1/ip.json')
# ipadd = ip_request.json()['ip']
# print(ipadd)

# url = 'https://get.geojs.io/v1/ip/geo/'+ipadd+'.json'
# geo_request = requests.get(url)
# geo_data = geo_request.json()
# print(geo_data)
# print(geo_data['city'])
# print(geo_data['latitude'])
# print(geo_data['longitude'])

print("*************************************")
import http.client
import urllib

p = { 'key': '14O7L2X1VONHKA02XED5GS8VNTYO4DZ0', 'format': 'json', 'lat': '19.7514798', 'lng': '75.7138884' }

conn = http.client.HTTPConnection("api.geodatasource.com")
print(conn)
conn.request("GET", "/city?" + urllib.parse.urlencode(p))
res = conn.getresponse()
print (res.read())