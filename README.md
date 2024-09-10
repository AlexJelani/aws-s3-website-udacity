# Deploy Static Website on AWS

**Description**
In this project, you will deploy a static website to AWS using S3, CloudFront, and IAM.

The files included are:

index.html - The Index document for the website.

**Instructions**
1. Create S3 bucket
    bucket name: my-3428203-bucket-website
    uncheck: block all public access
![](my-cloudops123-bucket-S3-bucket-S3-us-east-1.png)
2. Upload index.html to S3 bucket
3. Add policy to S3 bucket
![](my-cloudops123-bucket-S3-bucket-S3-policy.png)
4. The S3 bucket is configure to support website hosting
![](my-cloudops123-bucket-S3-bucket-S3-website-hosting.png)
5. Create CloudFront distribution
   ![](Amazon-CloudFront.png)
Website URL: https://d6infhq6mxyzt.cloudfront.net/
![](Sample-S3-website-udacity.png)
