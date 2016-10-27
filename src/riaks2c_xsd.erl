%% SRC file generated by Makefile
-module(riaks2c_xsd ).
-export([model/0,scan/1]).

scan(Input) ->
case erlsom:scan(Input, model(), [{output_encoding, utf8}]) of {ok, Val, _} -> Val; {error, Reason} -> exit({bad_xml, Reason}) end.

model() ->
{model,[{type,'_document',sequence,
              [{el,[{alt,'ListBucketResult','ListBucketResult',[],1,1,true,
                         undefined},
                    {alt,'ListAllMyBucketsResult','ListAllMyBucketsResult',[],
                         1,1,true,undefined},
                    {alt,'Error','Error',[],1,1,true,undefined}],
                   1,1,undefined,3}],
              [],undefined,undefined,1,1,1,false,undefined},
        {type,'Error',sequence,
              [{el,[{alt,'Code',{'#PCDATA',char},[],1,1,true,undefined}],
                   1,1,undefined,3},
               {el,[{alt,'Message',{'#PCDATA',char},[],1,1,true,undefined}],
                   1,1,undefined,4},
               {el,[{alt,'Resource',{'#PCDATA',char},[],1,1,true,undefined}],
                   1,1,undefined,5},
               {el,[{alt,'RequestId',{'#PCDATA',char},[],1,1,true,undefined}],
                   1,1,undefined,6}],
              [],undefined,undefined,5,1,1,undefined,undefined},
        {type,'TopicConfiguration',sequence,
              [{el,[{alt,'Topic',{'#PCDATA',char},[],1,1,true,undefined}],
                   1,1,undefined,3},
               {el,[{alt,'Event',{'#PCDATA',char},[],1,1,true,undefined}],
                   1,unbound,undefined,4}],
              [],undefined,undefined,3,1,1,undefined,undefined},
        {type,'NotificationConfiguration',sequence,
              [{el,[{alt,'TopicConfiguration','TopicConfiguration',[],1,1,
                         true,undefined}],
                   0,unbound,undefined,3}],
              [],undefined,undefined,2,1,1,undefined,undefined},
        {type,'VersioningConfiguration',sequence,
              [{el,[{alt,'Status',{'#PCDATA',char},[],1,1,true,undefined}],
                   0,1,undefined,3},
               {el,[{alt,'MfaDelete',{'#PCDATA',char},[],1,1,true,undefined}],
                   0,1,undefined,4}],
              [],undefined,undefined,3,1,1,undefined,undefined},
        {type,'RequestPaymentConfiguration',sequence,
              [{el,[{alt,'Payer',{'#PCDATA',char},[],1,1,true,undefined}],
                   1,1,undefined,3}],
              [],undefined,undefined,2,1,1,undefined,undefined},
        {type,'CopyObjectResult',sequence,
              [{el,[{alt,'LastModified',
                         {'#PCDATA',char},
                         [],1,1,true,undefined}],
                   1,1,undefined,3},
               {el,[{alt,'ETag',{'#PCDATA',char},[],1,1,true,undefined}],
                   1,1,undefined,4}],
              [],undefined,undefined,3,1,1,undefined,undefined},
        {type,'ListAllMyBucketsList',sequence,
              [{el,[{alt,'Bucket','ListAllMyBucketsEntry',[],1,1,true,
                         undefined}],
                   0,unbound,undefined,3}],
              [],undefined,undefined,2,1,1,undefined,undefined},
        {type,'ListAllMyBucketsResult',sequence,
              [{el,[{alt,'Owner','CanonicalUser',[],1,1,true,undefined}],
                   1,1,undefined,3},
               {el,[{alt,'Buckets','ListAllMyBucketsList',[],1,1,true,
                         undefined}],
                   1,1,undefined,4}],
              [],undefined,undefined,3,1,1,undefined,undefined},
        {type,'ListAllMyBucketsEntry',sequence,
              [{el,[{alt,'Name',{'#PCDATA',char},[],1,1,true,undefined}],
                   1,1,undefined,3},
               {el,[{alt,'CreationDate',
                         {'#PCDATA',char},
                         [],1,1,true,undefined}],
                   1,1,undefined,4}],
              [],undefined,undefined,3,1,1,undefined,undefined},
        {type,'ListVersionsResult',sequence,
              [{el,[{alt,'Metadata','MetadataEntry',[],1,1,true,undefined}],
                   0,unbound,undefined,3},
               {el,[{alt,'Name',{'#PCDATA',char},[],1,1,true,undefined}],
                   1,1,undefined,4},
               {el,[{alt,'Prefix',{'#PCDATA',char},[],1,1,true,undefined}],
                   1,1,undefined,5},
               {el,[{alt,'KeyMarker',{'#PCDATA',char},[],1,1,true,undefined}],
                   1,1,undefined,6},
               {el,[{alt,'VersionIdMarker',
                         {'#PCDATA',char},
                         [],1,1,true,undefined}],
                   1,1,undefined,7},
               {el,[{alt,'NextKeyMarker',
                         {'#PCDATA',char},
                         [],1,1,true,undefined}],
                   0,1,undefined,8},
               {el,[{alt,'NextVersionIdMarker',
                         {'#PCDATA',char},
                         [],1,1,true,undefined}],
                   0,1,undefined,9},
               {el,[{alt,'MaxKeys',{'#PCDATA',integer},[],1,1,true,undefined}],
                   1,1,undefined,10},
               {el,[{alt,'Delimiter',{'#PCDATA',char},[],1,1,true,undefined}],
                   0,1,undefined,11},
               {el,[{alt,'IsTruncated',
                         {'#PCDATA',bool},
                         [],1,1,true,undefined}],
                   1,1,undefined,12},
               {el,[{alt,'Version','VersionEntry',[],1,1,true,undefined},
                    {alt,'DeleteMarker','DeleteMarkerEntry',[],1,1,true,
                         undefined}],
                   0,unbound,undefined,13},
               {el,[{alt,'CommonPrefixes','PrefixEntry',[],1,1,true,
                         undefined}],
                   0,unbound,undefined,14}],
              [],undefined,undefined,13,1,1,undefined,undefined},
        {type,'ListBucketResult',sequence,
              [{el,[{alt,'Metadata','MetadataEntry',[],1,1,true,undefined}],
                   0,unbound,undefined,3},
               {el,[{alt,'Name',{'#PCDATA',char},[],1,1,true,undefined}],
                   1,1,undefined,4},
               {el,[{alt,'Prefix',{'#PCDATA',char},[],1,1,true,undefined}],
                   1,1,undefined,5},
               {el,[{alt,'Marker',{'#PCDATA',char},[],1,1,true,undefined}],
                   1,1,undefined,6},
               {el,[{alt,'NextMarker',{'#PCDATA',char},[],1,1,true,undefined}],
                   0,1,undefined,7},
               {el,[{alt,'MaxKeys',{'#PCDATA',integer},[],1,1,true,undefined}],
                   1,1,undefined,8},
               {el,[{alt,'Delimiter',{'#PCDATA',char},[],1,1,true,undefined}],
                   0,1,undefined,9},
               {el,[{alt,'IsTruncated',
                         {'#PCDATA',bool},
                         [],1,1,true,undefined}],
                   1,1,undefined,10},
               {el,[{alt,'Contents','ListEntry',[],1,1,true,undefined}],
                   0,unbound,undefined,11},
               {el,[{alt,'CommonPrefixes','PrefixEntry',[],1,1,true,
                         undefined}],
                   0,unbound,undefined,12}],
              [],undefined,undefined,11,1,1,undefined,undefined},
        {type,'PrefixEntry',sequence,
              [{el,[{alt,'Prefix',{'#PCDATA',char},[],1,1,true,undefined}],
                   1,1,undefined,3}],
              [],undefined,undefined,2,1,1,undefined,undefined},
        {type,'DeleteMarkerEntry',sequence,
              [{el,[{alt,'Key',{'#PCDATA',char},[],1,1,true,undefined}],
                   1,1,undefined,3},
               {el,[{alt,'VersionId',{'#PCDATA',char},[],1,1,true,undefined}],
                   1,1,undefined,4},
               {el,[{alt,'IsLatest',{'#PCDATA',bool},[],1,1,true,undefined}],
                   1,1,undefined,5},
               {el,[{alt,'LastModified',
                         {'#PCDATA',char},
                         [],1,1,true,undefined}],
                   1,1,undefined,6},
               {el,[{alt,'Owner','CanonicalUser',[],1,1,true,undefined}],
                   0,1,undefined,7}],
              [],undefined,undefined,6,1,1,undefined,undefined},
        {type,'VersionEntry',sequence,
              [{el,[{alt,'Key',{'#PCDATA',char},[],1,1,true,undefined}],
                   1,1,undefined,3},
               {el,[{alt,'VersionId',{'#PCDATA',char},[],1,1,true,undefined}],
                   1,1,undefined,4},
               {el,[{alt,'IsLatest',{'#PCDATA',bool},[],1,1,true,undefined}],
                   1,1,undefined,5},
               {el,[{alt,'LastModified',
                         {'#PCDATA',char},
                         [],1,1,true,undefined}],
                   1,1,undefined,6},
               {el,[{alt,'ETag',{'#PCDATA',char},[],1,1,true,undefined}],
                   1,1,undefined,7},
               {el,[{alt,'Size',{'#PCDATA',char},[],1,1,true,undefined}],
                   1,1,undefined,8},
               {el,[{alt,'Owner','CanonicalUser',[],1,1,true,undefined}],
                   0,1,undefined,9},
               {el,[{alt,'StorageClass',
                         {'#PCDATA',char},
                         [],1,1,true,undefined}],
                   1,1,undefined,10}],
              [],undefined,undefined,9,1,1,undefined,undefined},
        {type,'ListEntry',sequence,
              [{el,[{alt,'Key',{'#PCDATA',char},[],1,1,true,undefined}],
                   1,1,undefined,3},
               {el,[{alt,'LastModified',
                         {'#PCDATA',char},
                         [],1,1,true,undefined}],
                   1,1,undefined,4},
               {el,[{alt,'ETag',{'#PCDATA',char},[],1,1,true,undefined}],
                   1,1,undefined,5},
               {el,[{alt,'Size',{'#PCDATA',char},[],1,1,true,undefined}],
                   1,1,undefined,6},
               {el,[{alt,'StorageClass',
                         {'#PCDATA',char},
                         [],1,1,true,undefined}],
                   1,1,undefined,7},
               {el,[{alt,'Owner','CanonicalUser',[],1,1,true,undefined}],
                   0,1,undefined,8}],
              [],undefined,undefined,7,1,1,undefined,undefined},
        {type,'PutObjectResult',sequence,
              [{el,[{alt,'ETag',{'#PCDATA',char},[],1,1,true,undefined}],
                   1,1,undefined,3},
               {el,[{alt,'LastModified',
                         {'#PCDATA',char},
                         [],1,1,true,undefined}],
                   1,1,undefined,4}],
              [],undefined,undefined,3,1,1,undefined,undefined},
        {type,'GetObjectResult',sequence,
              [{el,[{alt,'Status','Status',[],1,1,true,undefined}],
                   1,1,undefined,3},
               {el,[{alt,'Metadata','MetadataEntry',[],1,1,true,undefined}],
                   0,unbound,undefined,4},
               {el,[{alt,'Data',{'#PCDATA',char},[],1,1,true,undefined}],
                   1,1,true,5},
               {el,[{alt,'LastModified',
                         {'#PCDATA',char},
                         [],1,1,true,undefined}],
                   1,1,undefined,6},
               {el,[{alt,'ETag',{'#PCDATA',char},[],1,1,true,undefined}],
                   1,1,undefined,7}],
              [],undefined,undefined,6,1,1,undefined,'GetObjectResult'},
        {type,'AccessControlPolicy',sequence,
              [{el,[{alt,'Owner','CanonicalUser',[],1,1,true,undefined}],
                   1,1,undefined,3},
               {el,[{alt,'AccessControlList','AccessControlList',[],1,1,true,
                         undefined}],
                   1,1,undefined,4}],
              [],undefined,undefined,3,1,1,undefined,undefined},
        {type,'LocationConstraint',sequence,
              [{el,[{alt,'#text',{'#PCDATA',char},[],1,1,false,undefined}],
                   0,1,undefined,3}],
              [],undefined,undefined,2,1,1,undefined,undefined},
        {type,'CreateBucketConfiguration',sequence,
              [{el,[{alt,'LocationConstraint','LocationConstraint',[],1,1,
                         true,undefined}],
                   1,1,undefined,3}],
              [],undefined,undefined,2,1,1,undefined,undefined},
        {type,'AccessControlList',sequence,
              [{el,[{alt,'Grant','Grant',[],1,1,true,undefined}],
                   0,100,undefined,3}],
              [],undefined,undefined,2,1,1,undefined,undefined},
        {type,'Grant',sequence,
              [{el,[{alt,'Grantee','Grantee',[],1,1,true,undefined}],
                   1,1,undefined,3},
               {el,[{alt,'Permission',{'#PCDATA',char},[],1,1,true,undefined}],
                   1,1,undefined,4}],
              [],undefined,undefined,3,1,1,undefined,undefined},
        {type,'Group',sequence,
              [{el,[{alt,'URI',{'#PCDATA',char},[],1,1,true,undefined}],
                   1,1,undefined,3}],
              [],undefined,undefined,2,1,1,undefined,'Group'},
        {type,'CanonicalUser',sequence,
              [{el,[{alt,'ID',{'#PCDATA',char},[],1,1,true,undefined}],
                   1,1,undefined,3},
               {el,[{alt,'DisplayName',
                         {'#PCDATA',char},
                         [],1,1,true,undefined}],
                   0,1,undefined,4}],
              [],undefined,undefined,3,1,1,undefined,'CanonicalUser'},
        {type,'AmazonCustomerByEmail',sequence,
              [{el,[{alt,'EmailAddress',
                         {'#PCDATA',char},
                         [],1,1,true,undefined}],
                   1,1,undefined,3}],
              [],undefined,undefined,2,1,1,undefined,'AmazonCustomerByEmail'},
        {type,'User',sequence,[],[],undefined,undefined,1,1,1,undefined,
              'User'},
        {type,'Grantee',sequence,[],[],undefined,undefined,1,1,1,undefined,
              undefined},
        {type,'LoggingSettings',sequence,
              [{el,[{alt,'TargetBucket',
                         {'#PCDATA',char},
                         [],1,1,true,undefined}],
                   1,1,undefined,3},
               {el,[{alt,'TargetPrefix',
                         {'#PCDATA',char},
                         [],1,1,true,undefined}],
                   1,1,undefined,4},
               {el,[{alt,'TargetGrants','AccessControlList',[],1,1,true,
                         undefined}],
                   0,1,undefined,5}],
              [],undefined,undefined,4,1,1,undefined,undefined},
        {type,'BucketLoggingStatus',sequence,
              [{el,[{alt,'LoggingEnabled','LoggingSettings',[],1,1,true,
                         undefined}],
                   0,1,undefined,3}],
              [],undefined,undefined,2,1,1,undefined,undefined},
        {type,'CreateBucketResult',sequence,
              [{el,[{alt,'BucketName',{'#PCDATA',char},[],1,1,true,undefined}],
                   1,1,undefined,3}],
              [],undefined,undefined,2,1,1,undefined,undefined},
        {type,'Result',sequence,
              [{el,[{alt,'Status','Status',[],1,1,true,undefined}],
                   1,1,undefined,3}],
              [],undefined,undefined,2,1,1,undefined,undefined},
        {type,'Status',sequence,
              [{el,[{alt,'Code',{'#PCDATA',integer},[],1,1,true,undefined}],
                   1,1,undefined,3},
               {el,[{alt,'Description',
                         {'#PCDATA',char},
                         [],1,1,true,undefined}],
                   1,1,undefined,4}],
              [],undefined,undefined,3,1,1,undefined,undefined},
        {type,'MetadataEntry',sequence,
              [{el,[{alt,'Name',{'#PCDATA',char},[],1,1,true,undefined}],
                   1,1,undefined,3},
               {el,[{alt,'Value',{'#PCDATA',char},[],1,1,true,undefined}],
                   1,1,undefined,4}],
              [],undefined,undefined,3,1,1,undefined,undefined}],
       [{ns,"http://s3.amazonaws.com/doc/2006-03-01/",undefined,qualified},
        {ns,"http://www.w3.org/2001/XMLSchema","xsd",qualified}],
       "http://s3.amazonaws.com/doc/2006-03-01/",
       [{'GetObjectResult','Result'},
        {'Group','Grantee'},
        {'CanonicalUser','User'},
        {'AmazonCustomerByEmail','User'},
        {'User','Grantee'}],
       true,skip}.