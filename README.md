GeoDesic Customized Image
=========================

Description
-----------
Customized cloudposse/geodesic image which addresses issues and allows for more customizations. 

- Source from [cloudposse/geodesic](https://github.com/cloudposse/geodesic)
- Geodesic [Documentation](https://docs.cloudposse.com/tutorials/geodesic-getting-started/) 

#### Issues 
- `${HOME}` is set to `/conf` by default, which breaks the terraform cloud login configuration since it lives in `/localhost`
- Installed `atmos`; key tool from cloudposse, not sure why it's not there by default.

## Build and Install the customized Image.
> This builds from these base `cloudposse/geodesic` image based on your arguments. 

```
./build-and-install.sh dev-head/geodesic debian 2.7.1
```