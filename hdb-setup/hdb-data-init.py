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
            "description": "有效期
                2014.9.5 至 2016.1.22
                不可用日期
                2015年9月26日至9月27日、10月1日至10月7日、周六至周日，国定节假日、周末不可使用
                预约提醒
                无需预约，消费高峰时可能需要等位
                限购限用提醒
                每张美团券最多1位成人使用，身高1米以上儿童计入人数
                温馨提示
                1米（含）以下的儿童免费，1米（不含）-1.4米（不含）儿童49元/位。
                65岁以上的老人持有效证件（身份证或老年证）周一至周五到店内均享受56元/位的优惠价，周六 周日及国定假日无优惠。
                仅限堂食，不提供餐前外带及餐后打包服务
                本单不提供提前预约订位服务
                如遇客流高峰，请耐心排队等位
                本团购仅限工作日午市使用，周末、节假日不支持使用。
                部分菜品因时令原因有所不同，请以店内当日实际供应为准
                团购用户不可同时享受商家其他优惠
                部分菜品因时令原因有所不同，请以店内当日实际供应为准
                商家服务
                停车位收费标准：停车费用请致电商家咨询"
    },
        "itemImages": [
        {
            "itemImageseBaseUrl": "http://image.hengda.com/image1.jpg",
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

ORGS={"2":"大众点评", "1":"UBER", "3":"格瓦拉"}
LISTPRICES=[0,1,3,5,9,10,12,15,20,30,50,65,99,107,130,163,170,200,300,500,800,1000,2000]
POINTPRICES=[0,1,5,10,50,99,100,150,200,263,500,555,839,1000,2010,3340,5000,9999,11000,200000,500000,1000000]
INVENTORY=[0,1,6,10,50,100,300,500,1000,99999,150000,150000,99999,1000,500,300,100,50,10,6,1,0]

def Init(path):
    os.mkdir(path)
    os.mkdir(path+"/"+"items")
    os.mkdir(path+"/"+"inventorys")
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

def do(path):
    for id in ORGS:
        idx = 0
        for price in LISTPRICES:
            GenerateItem(idx, path, id)
            GenerateInventory(idx, path, id)
            idx = idx + 1

if __name__ == "__main__":
    if len(sys.argv) != 2:
        Usage()
    Init(sys.argv[1])
    do(sys.argv[1])
