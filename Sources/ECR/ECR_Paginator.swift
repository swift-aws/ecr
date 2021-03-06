// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

//MARK: Paginators

extension ECR {

    ///  Returns the scan findings for the specified image.
    public func describeImageScanFindingsPaginator(_ input: DescribeImageScanFindingsRequest, onPage: @escaping (DescribeImageScanFindingsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeImageScanFindings, tokenKey: \DescribeImageScanFindingsResponse.nextToken, onPage: onPage)
    }

    ///  Returns metadata about the images in a repository.  Beginning with Docker version 1.9, the Docker client compresses image layers before pushing them to a V2 Docker registry. The output of the docker images command shows the uncompressed image size, so it may return a larger image size than the image sizes returned by DescribeImages. 
    public func describeImagesPaginator(_ input: DescribeImagesRequest, onPage: @escaping (DescribeImagesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeImages, tokenKey: \DescribeImagesResponse.nextToken, onPage: onPage)
    }

    ///  Describes image repositories in a registry.
    public func describeRepositoriesPaginator(_ input: DescribeRepositoriesRequest, onPage: @escaping (DescribeRepositoriesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeRepositories, tokenKey: \DescribeRepositoriesResponse.nextToken, onPage: onPage)
    }

    ///  Retrieves the results of the lifecycle policy preview request for the specified repository.
    public func getLifecyclePolicyPreviewPaginator(_ input: GetLifecyclePolicyPreviewRequest, onPage: @escaping (GetLifecyclePolicyPreviewResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getLifecyclePolicyPreview, tokenKey: \GetLifecyclePolicyPreviewResponse.nextToken, onPage: onPage)
    }

    ///  Lists all the image IDs for the specified repository. You can filter images based on whether or not they are tagged by using the tagStatus filter and specifying either TAGGED, UNTAGGED or ANY. For example, you can filter your results to return only UNTAGGED images and then pipe that result to a BatchDeleteImage operation to delete them. Or, you can filter your results to return only TAGGED images to list all of the tags in your repository.
    public func listImagesPaginator(_ input: ListImagesRequest, onPage: @escaping (ListImagesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listImages, tokenKey: \ListImagesResponse.nextToken, onPage: onPage)
    }

}

extension ECR.DescribeImageScanFindingsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> ECR.DescribeImageScanFindingsRequest {
        return .init(
            imageId: self.imageId, 
            maxResults: self.maxResults, 
            nextToken: token, 
            registryId: self.registryId, 
            repositoryName: self.repositoryName
        )

    }
}

extension ECR.DescribeImagesRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> ECR.DescribeImagesRequest {
        return .init(
            filter: self.filter, 
            imageIds: self.imageIds, 
            maxResults: self.maxResults, 
            nextToken: token, 
            registryId: self.registryId, 
            repositoryName: self.repositoryName
        )

    }
}

extension ECR.DescribeRepositoriesRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> ECR.DescribeRepositoriesRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token, 
            registryId: self.registryId, 
            repositoryNames: self.repositoryNames
        )

    }
}

extension ECR.GetLifecyclePolicyPreviewRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> ECR.GetLifecyclePolicyPreviewRequest {
        return .init(
            filter: self.filter, 
            imageIds: self.imageIds, 
            maxResults: self.maxResults, 
            nextToken: token, 
            registryId: self.registryId, 
            repositoryName: self.repositoryName
        )

    }
}

extension ECR.ListImagesRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> ECR.ListImagesRequest {
        return .init(
            filter: self.filter, 
            maxResults: self.maxResults, 
            nextToken: token, 
            registryId: self.registryId, 
            repositoryName: self.repositoryName
        )

    }
}


