<h1 align=center>Dockette / Java</h1>

<p align=center>
   <a href="https://github.com/dockette/java/actions"><img src="https://github.com/dockette/java/actions/workflows/docker.yml/badge.svg" alt="GitHub Actions"></a>
   <a href="https://hub.docker.com/r/dockette/java"><img src="https://img.shields.io/docker/pulls/dockette/java.svg" alt="Docker Hub pulls"></a>
   <a href="https://github.com/sponsors/f3l1x"><img src="https://img.shields.io/badge/sponsor-GitHub%20Sponsors-ea4aaa" alt="GitHub Sponsors"></a>
   <a href="https://github.com/orgs/dockette/discussions"><img src="https://img.shields.io/badge/support-discussions-6f42c1" alt="Support/Discussions"></a>
</p>

<p align=center>
   Ready-to-use legacy images for Java JDK 8 (OpenJDK) and Maven 3.
</p>

-----

## Usage

### Oracle JDK 8

> Java 1.8.0_131-b13

This Oracle Java JDK 8 image is based on Alpine linux (`dockette/alpine:3.8`).
Docker Hub: <https://hub.docker.com/r/dockette/jdk8>

```
docker run -v /path/to/site:/srv dockette/jdk8
```

### OpenJDK 8

> OpenJDK 8.171.11-r0

This OpenJDK 8 image is based on Alpine linux (`dockette/alpine:3.8`).
Docker Hub: <https://hub.docker.com/r/dockette/openjdk8>

```
docker run -v /path/to/site:/srv dockette/openjdk8
```

### Maven 3

> Maven 3.5.4

This Maven 3 with Oracle Java JDK 8 image is based on Alpine linux (`dockette/alpine:3.8`).
Docker Hub: <https://hub.docker.com/r/dockette/mvn>

```
docker run -v /path/to/site:/srv dockette/mvn
```

### OpenJDK 8 + Maven 3

This Maven 3 with OpenJDK 8 image is based on Alpine linux (`dockette/alpine:3.8`).
Docker Hub: <https://hub.docker.com/r/dockette/openjdk-mvn>

```
docker run -v /path/to/site:/srv dockette/openjdk-mvn
```

## Legacy Support

These images target Java 8, Maven 3.5.4, and Alpine 3.8. They are kept for legacy workloads and should not be treated as current Java runtime images.

## Maintenance

See [how to contribute](https://github.com/dockette/.github/blob/master/CONTRIBUTING.md) to this package. Consider to [support](https://github.com/sponsors/f3l1x) **f3l1x**. Thank you for using this package.
