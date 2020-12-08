import json
from Getconn import getconn


# initialize db
mydb = getconn()
cur = mydb.cursor()
hId=0

def getHotelMenu(hId):
	print('*******Preparing Hotel view model*****')
	hId = int(hId)
	hotelViewModel = {
	"hotelDetails" : getHotelDetailsById(hId),
	"menuCategory" : getHotelMenuCategory(hId),
	"menuItems" : getHotelMainMenu(hId),
        "menuId" : getHotelMenuId(hId)
	}
	print("Hotelmanager returning result...... ")
	return hotelViewModel


def getHotelDetailsById(hId):
        cur.execute("SELECT rstname, rstcity, cont_no from rprofile where rst_no=%s", (hId,))
        hotelDetails = cur.fetchall()
        print("HotelDetailsJSON: ")
        return hotelDetails

def getHotelMenuCategory(hId):
        cur.execute("SELECT distinct(category) FROM menuitem WHERE R_MnNo in (select R_Mnid from menu where rst_no=%s)",(hId,))
        menuCategory = cur.fetchall()
        print("Menu Category JSON: ")
	# fetch hotel menu Category
        return  json.loads(json.dumps(menuCategory))

def getHotelMainMenu(hId):
        cur.execute("SELECT r_foodid,foodtype, category, subcategory, itemname, mrp FROM menuitem WHERE R_MnNo in (select R_Mnid from menu where rst_no=%s)",(hId,))
        menuItem = cur.fetchall()
        print("Menu Item JSON: ")
        # fetch hotel menu
        return json.loads(json.dumps(menuItem))

def getHotelMenuId(hId):
        cur.execute("select R_Mnid from menu where rst_no=%s",(hId,))
        menuId = cur.fetchall()
        print("Menu Id: ")
        # fetch hotel menu
        return json.loads(json.dumps(menuId))
