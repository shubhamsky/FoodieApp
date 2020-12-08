import json
from Getconn import getconn


# initialize db
mydb = getconn()
cur = mydb.cursor()
pid=0


def getUserProfile(pid):
    
    print("Profile returning result...... ")
    print(pid)
    profileModel = {
            'Cust_Prid': '',
            'CustName':'',
            'Address1':'',
            'State1':'',
            'City1':'',
            'Pincode1':'',
            'MobileNo':'',
            'EmailId':''
        }
    cur.execute(("SELECT p.Cust_Prid, p.CustName, p.Address1, p.State1, p.City1, p.Pincode1,su.MobileNo, su.EmailId from profile as p INNER JOIN signup as su on p.Cust_No = su.Cust_Id and p.Cust_No =%s"), (pid,))
    userProfile = cur.fetchone()
    print(userProfile)
    if userProfile is not None:
        profileModel.Cust_Prid = userProfile[0]
        profileModel.CustName = userProfile[1]
        profileModel.Address1 = userProfile[2]
        profileModel.State1 = userProfile[3]
        profileModel.City1 = userProfile[4]
        profileModel.Pincode1 = userProfile[5]
        profileModel.MobileNo = userProfile[6]
        profileModel.EmailId = userProfile[7]
        print(profileModel)
        return profileModel
    else:
        return profileModel

def updateUserProfile(userProfile):
    cur.execute("Update profile SET CustName = %s, Address1= %s, State1=%s, City1=%s, Pincode1=%s Where Cust_Prid = %s", (userProfile['CustName'], 
    userProfile['Address1'], userProfile['State1'] , userProfile['City1'], userProfile['Pincode1'], userProfile['Cust_Prid']))
    mydb.commit()
    mydb.close()
    return True        