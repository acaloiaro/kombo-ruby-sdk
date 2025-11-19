# Kombo::PostPassthroughToolApiRequestBodyMultipartFormDataInnerValueOneOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | File name of the file you want to upload. We recommend providing something human-readable with a valid file extension (like &#x60;Resume.pdf&#x60;), as this might be shown in your customer&#39;s system. |  |
| **content_type** | **String** | Content/MIME type of the file (e.g., &#x60;application/pdf&#x60;).  If you provide &#x60;data&#x60;, this is required. If you provide &#x60;data_url&#x60;, this is optional and we&#39;ll attempt to use the &#x60;Content-Type&#x60; header of the response.  **Note:** Please validate that the content type you provide is actually meaningful (and not something generic like [&#x60;application/octet-stream&#x60;](https://developer.mozilla.org/en-US/docs/Web/HTTP/Guides/MIME_types#applicationoctet-stream)). Especially when using object storage (like AWS S3), it&#39;s easy to accidentally discard the content types of user-provided files, so make sure to explicitly persist them when processing uploads from your users (see guides for [AWS](https://docs.aws.amazon.com/AmazonS3/latest/userguide/UsingMetadata.html#SysMetadata), [Google Cloud](https://cloud.google.com/storage/docs/metadata#content-type), and [Azure](https://learn.microsoft.com/en-us/rest/api/storageservices/put-blob#request-headers-all-blob-types)). | [optional] |
| **data_url** | **String** | URL to the file you want to upload that can be accessed without authentication headers. We will download the content immediately when receiving the request, so the URL can be short-lived.  If you&#39;re using an object storage provider (like AWS S3), we strongly recommend providing a signed URL for secure access (see guides for [AWS](https://docs.aws.amazon.com/AmazonS3/latest/userguide/ShareObjectPreSignedURL.html), [Google Cloud](https://cloud.google.com/storage/docs/access-control/signed-urls), and [Azure](https://learn.microsoft.com/en-us/azure/storage/common/storage-sas-overview)).  **Note:** You must provide either this or &#x60;data_url&#x60;. We recommend &#x60;data_url&#x60; over &#x60;data&#x60; for most cases. | [optional] |
| **data** | **String** | Base64-encoded contents of the file you want to upload.  **Note:** You must provide either this or &#x60;data_url&#x60;. We recommend &#x60;data_url&#x60; over &#x60;data&#x60; for most cases. | [optional] |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PostPassthroughToolApiRequestBodyMultipartFormDataInnerValueOneOf.new(
  name: null,
  content_type: null,
  data_url: null,
  data: null
)
```

