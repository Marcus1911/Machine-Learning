from bs4 import BeautifulSoup
import urllib

urlData = urllib.urlopen('https://www.facebook.com/photo.php?fbid=4414604421313&set=a.1299978197604.33162.1774899026&type=1&theater')
data = str(urlData.readlines())
bs = BeautifulSoup(data)
imgUrl = bs.find('img', attrs={'class': 'fbPhotoImage img'}).get('src')
urllib.urlretrieve(imgUrl, "somepicture.jpg")


