# -*- coding: UTF-8 -*-

import os
import sys
import string
import random

ITEM_TEMPLATE='''{
    "item": {
        "orgId": %s,
            "title": "%s满%s减10",
            "subTitle": "测试商品描述1",
            "description": "有效期2014.9.5 至 2016.1.22不可用日期2015年9月26日至9月27日、10月1日至10月7日、周六至周日，国定节假日、周末不可使用预约提醒无需预约，消费高峰时可能需要等位限购限用提醒每张美团券最多1位成人使用，身高1米以上儿童计入人数温馨提示1米（含）以下的儿童免费，1米（不含）-1.4米（不含）儿童49元/位。65岁以的老人持有效证件（身份证或老年证）周一至周五到店内均享受56元/位的优惠价，周六 周日及国定假日无优惠。仅限堂食，不提供餐前外带及餐后打包服务本单不提供提前预约订位服务如遇客流高峰，请耐心排队等位本团购仅限工作日午市使用，周末、节假日不支持使用。部分菜品因时令原因有所不同，请以店内当日实际供应为准团购用户不可同时享受商家其他优惠部分菜品因时令原因有所不同，请以店内当日实际供应为准商家服务停车位收费标准：停车费用请致电商家咨询"
    },
    "itemImages": [
        {
            "imageBaseUrl": "http://image.hengda.com/image1.jpg",
            "sequence": 0
        },
        {
            "imageBaseUrl": "http://image.hengda.com/image1.jpg",
            "sequence": 1
        }
    ],
    "itemPrices": [
        {
            "pointsPrice": %s
        }
    ]
}
'''

FF_TEMPLATE='''
{
    "name":"%s",
    "notes":"%s",
    "type":"%s",
    "beginTime":"%s",
    "finishTime":"%s",
    "maxPoints":%d,
    "minPoints":%d,
    "avgPoints":%d,
    "ffCount":"100000",
    "pointsExpireYear":%d,
    "pointsExpireMonth":%d,
    "partnerId":"%s",
    "productId":"%s"
}
'''


ORGS={"2":"大众点评", "1":"UBER", "3":"格瓦拉"}
LISTPRICES=[1,3,5,9,10,15,20,30,50,65,99,100,120,150,163,180,200,300,500,999,1000,1001]
POINTPRICES=[1,10,28,50,100,150,200,263,300,400,500,555,600,839,1000,2010,3340,5000,8000,9999,10000,100001]
INVENTORY=[100,10000,5,100,10,10,10,10,10,10,10,10,10,10,10,10,10,10,0,1,2,1]

FFS=[
    {
        "name":"恒大冰泉发分活动0",
        "notes":"恒大冰泉扫码抽分活动0",
        "type":"FFAC|M|YXQM",
        "beginTime":"2016-01-01 00:00:00",
        "finishTime":"2016-02-01 00:00:00",
        "maxPoints":100,
        "minPoints":10,
        "avgPoints":50,
        "pointsExpireYear":2016,
        "pointsExpireMonth":10,
        "partnerId":"1001",
        "productId":"BQ100001"
    },
    {
        "name":"恒大冰泉发分活动1",
        "notes":"恒大冰泉扫码抽分活动1",
        "type":"FFAC|S|YWYM",
        "beginTime":"2016-01-01 00:00:00",
        "finishTime":"2016-02-01 00:00:00",
        "maxPoints":100,
        "minPoints":10,
        "avgPoints":40,
        "pointsExpireYear":2016,
        "pointsExpireMonth":10,
        "partnerId":"1001",
        "productId":"BQ100001"
    },
    {
        "name":"恒大冰泉发分活动2",
        "notes":"恒大冰泉扫码抽分活动2",
        "type":"FFAC|M|YXQM",
        "beginTime":"2016-01-01 00:00:00",
        "finishTime":"2016-02-01 00:00:00",
        "maxPoints":100,
        "minPoints":10,
        "avgPoints":45,
        "pointsExpireYear":2016,
        "pointsExpireMonth":10,
        "partnerId":"1002",
        "productId":"BQ100001"
    }
]

def Init(path):
    os.mkdir(path)
    os.mkdir(path+"/"+"items")
    os.mkdir(path+"/"+"inventorys")
    os.mkdir(path+"/"+"ffs")
    for id in ORGS:
        os.mkdir(path+"/"+"items/"+str(id))
        os.mkdir(path+"/"+"inventorys/" + str(id))

def Usage():
    print "cmd basepath"
    sys.exit(1)

def GenerateItem(idx, path, orgId):
    listPriceIdx = idx % len(LISTPRICES)
    pointPriceIdx = idx % len(POINTPRICES)
    itemDetails = ITEM_TEMPLATE % (str(orgId), str(ORGS[orgId]), str(LISTPRICES[listPriceIdx]), str(POINTPRICES[pointPriceIdx]))
    fp = open(path+"/items/"  + str(orgId) + "/" + str(LISTPRICES[listPriceIdx]), 'w')
    fp.write(itemDetails)

def GenerateInventory(idx, path, orgId):
    inventoryIdx = idx % len(INVENTORY)
    listPriceIdx = idx % len(LISTPRICES)
    fp = open(path+"/inventorys/"  + str(orgId) + "/" + str(LISTPRICES[listPriceIdx]), 'w')
    for inv in range(INVENTORY[inventoryIdx]):
        fp.write(str(orgId) + "-" + string.join(random.sample('01234567899876543210',16)).replace(' ','') + '\n')

def GenerateFF(idx, path):
    ff=FFS[idx]
    fp = open(path+"/ffs/" + str(idx), 'w')
    ffstring = FF_TEMPLATE % (ff['name'], ff['notes'], ff['type'], ff['beginTime'], ff['finishTime'],
                              ff['maxPoints'], ff['minPoints'], ff['avgPoints'], ff['pointsExpireYear'],
                              ff['pointsExpireMonth'], ff['partnerId'], ff['productId'])
    fp.write(ffstring)

def do(path):
    for id in ORGS:
        idx = 0
        for price in LISTPRICES:
            GenerateItem(idx, path, id)
            GenerateInventory(idx, path, id)
            idx = idx + 1
    idx=0
    for ff in FFS:
        GenerateFF(idx, path)
        idx = idx + 1

if __name__ == "__main__":
    if len(sys.argv) != 2:
        Usage()
    Init(sys.argv[1])
    do(sys.argv[1])
