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

def err(msg):
    print msg
    sys.exit(1)

def CreateItem(url, path):
    print path
    file = open(path)
    try:
        data = file.read()
    finally:
        file.close()
    status,content = HttpPost(url, restHeaders, data)
    if status != 200:
        err("http request err while create item!")
    resp = json.loads(content)
    if resp['code'] != 20000:
        err("failed to create item " + data)
    print "Success to create new item"
    return resp['result'],json.loads(data)['item']['orgId']

def GetContentType(filepath):
    return mimetypes.guess_type(filepath)[0] or 'application/octet-stream'

def EncodeMultipartFormdata(fields, files=[]):
    print fields, files
    BOUNDARY = mimetools.choose_boundary()
    CRLF = '\r\n'
    L = []

    print BOUNDARY

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
    status,content = HttpPost(url, restHeaders, data)
    if status != 200:
        print content
        err("http request err while online item!")
    resp = json.loads(content)
    if resp['code'] != 20000:
        err("failed to online item " + data)

def Instock(url, path, itemId, orgId):
    fields={"item_id": itemId, "org_id": orgId}
    files ={"file": path}
    content_type,body=EncodeMultipartFormdata(fields, files)
    multipartHeader={"Content-type":content_type}
    status,content = HttpPost(url, multipartHeader, body)
    if status != 200:
        print content
        err("http request err while create instock!")
    resp = json.loads(content)
    if resp['code'] != 20000:
        err("Failed to create instock " + body)
        print "Success to create new instock"

def Usage():
    print "api_endpoint basepath index"

if __name__ == "__main__":
    OnlineItem(sys.argv[1], sys.argv[2])
#HttpPost("http://120.26.192.100/hdb/admin/items", data)
