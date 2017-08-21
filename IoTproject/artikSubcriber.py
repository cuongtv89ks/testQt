import artikcloud
from artikcloud.rest import ApiException
import sys, getopt
import time, random, json
from pprint import pprint

from PyQt5.QtCore import QObject, pyqtSignal, pyqtSlot

class ArtikSubcriber(QObject):
    def __init__(self):
        QObject.__init__(self)
        self.config = None
        self.api_instance = None
        self.sdids = None
        self.api_response = None
        self.initSubcriber()

    jsonData = pyqtSignal(str, arguments=['data'])

    def initSubcriber(self):
        with open("config.json", 'r') as config_file:
            self.config = json.load(config_file)['Temp Sensor']

        artikcloud.configuration = artikcloud.Configuration();
        artikcloud.configuration.access_token = self.config['deviceToken']

        self.api_instance = artikcloud.MessagesApi()
        self.sdids = self.config['deviceId']

    @pyqtSlot()
    def getData(self):
        #print("get data")
        artikcloud.configuration.auth_settings()
        self.api_response = self.api_instance.get_last_normalized_messages(sdids=self.sdids)
        data = str(self.api_response).replace("'", '"').replace('u"', '"')
        #print(data)
        self.jsonData.emit(data)
