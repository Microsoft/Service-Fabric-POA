﻿##
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License.
##
Param
(
    [String]
    $ImageStoreConnectionString = "fabric:ImageStore",

    [string]
    $ApplicationVersion = "1.5.0"
)

Remove-ServiceFabricApplication -ApplicationName fabric:/PatchOrchestrationApplication -Force
Unregister-ServiceFabricApplicationType -ApplicationTypeName PatchOrchestrationApplicationType -ApplicationTypeVersion $ApplicationVersion -Force
Remove-ServiceFabricApplicationPackage -ApplicationPackagePathInImageStore PatchOrchestrationApplication -ImageStoreConnectionString $ImageStoreConnectionString