import httplib2
import sys
import json
import mimetypes
import mimetools
import os

restHeaders={"Content-type":"application/json","Accept":"application/json"}

def HttpPost(url, header, data):
    h = httplib2.Http('.cache')
    response,content = h.request(url, 'POST', data, header)
    return response.status,content

def HttpPatch(url, header, data):
    h = httplib2.Http('.cache')
    response,content = h.request(url, 'PATCH', data, header)
    return response.status,content

def err(msg):
    print msg
    sys.exit(1)

def CreateItem(url, path):
    file = open(path)
    try:
        data = file.read()
    finally:
        file.close()
    status,content = HttpPost(url, restHeaders, data)
    if status != 200:
        err("http request err while create item! %s" % (data))
    resp = json.loads(content)
    if resp['code'] != 20000:
        err("failed to create item " + data)
    print "Success to create new item " + str(resp['result'])
    return resp['result']

def GetContentType(filepath):
    return mimetypes.guess_type(filepath)[0] or 'application/octet-stream'

def EncodeMultipartFormdata(fields, files=[]):
    BOUNDARY = mimetools.choose_boundary()
    CRLF = '\r\n'
    L = []

    for key in fields:
        L.append('--' + BOUNDARY)
        L.append('Content-Disposition: form-data; name="%s"' % key)
        L.append('')
        L.append(fields[key])

    for key in files:
        L.append('--' + BOUNDARY)
        L.append('Content-Disposition: form-data; name="%s"; filename="%s"' % (key, os.path.basename(files[key])))
        L.append('Content-Type: %s' % GetContentType(files[key]))
        L.append('')
        L.append(open(files[key], 'rb').read())
        L.append('--' + BOUNDARY + '--')
        L.append('')
        body = CRLF.join(L)
        content_type = 'multipart/form-data; boundary=%s' % BOUNDARY
        return content_type, body


def OnlineItem(url, itemId):
    data='''
    {
        "operation": 1,
        "itemList": [
            %s
        ]
    }
    ''' % (itemId)
    status,content = HttpPatch(url, restHeaders, data)
    if status != 200:
        print content
        err("http request err while online item!")
    resp = json.loads(content)
    if resp['code'] != 20000:
        err("failed to online item " + data)
    print "Success to online new item"

def Instock(url, path, orgId, itemId):
    if os.path.getsize(path) == 0:
        return
    fields={"item_id": str(itemId), "org_id": str(orgId)}
    files ={"file": path}
    content_type,body=EncodeMultipartFormdata(fields, files)
    multipartHeader={"Content-type":content_type}
    status,content = HttpPost(url, multipartHeader, body)
    if status != 200:
        err("http request err while create instock!" + str(status) )
    resp = json.loads(content)
    if resp['code'] != 20000:
        err("Failed to create instock " + str(resp['code']) )
    print "Success to create new instock"

def InitItemInventory(url, basepath, orgId, idx):
    instockUrl = '''%s/inventorys''' % (url)
    itemOnlineUrl = '''%s/items''' % (url)
    itemCreateUrl = '''%s/items''' % (url)
    itemTemplate = '''%s/items/%s/%s''' % (basepath, orgId, idx)
    inventoryTemplate = '''%s/inventorys/%s/%s''' % (basepath, orgId, idx)
    itemId = CreateItem(itemCreateUrl, itemTemplate)
    OnlineItem(itemOnlineUrl, itemId)
    Instock(instockUrl, inventoryTemplate, orgId, itemId)

def Usage():
    print "api_endpoint basepath orgId index"

if __name__ == "__main__":
    if len(sys.argv) != 5:
        Usage()
        sys.exit(1)
    url = sys.argv[1]
    basepath =sys.argv[2]
    orgId = sys.argv[3]
    idx= sys.argv[4]
    InitItemInventory(url, basepath, orgId, idx)
#HttpPost("http://120.26.192.100/hdb/admin/items", data)
