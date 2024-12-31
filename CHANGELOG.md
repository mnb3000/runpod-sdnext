# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [v0.1.2] - 2024-12-31
### :bug: Bug Fixes
- [`bd00678`](https://github.com/mnb3000/runpod-sdnext/commit/bd006787b1d8ecf03da9312ea5ae0184cc12a720) - **scripts**: add missing `fix_venv.sh`, add missing depenpency *(commit by [@mnb3000](https://github.com/mnb3000))*

### :wrench: Chores
- [`ce34794`](https://github.com/mnb3000/runpod-sdnext/commit/ce347940e014a9715a27381b720d5fca1a07c754) - **release**: update CHANGELOG.md for v0.1.1 [skip ci] [norelease] *(commit by [@mnb3000](https://github.com/mnb3000))*


## [v0.1.1] - 2024-12-31
### :bug: Bug Fixes
- [`f040ab8`](https://github.com/mnb3000/runpod-sdnext/commit/f040ab8e10aeda95c978b3215a3cfab3b3540902) - **bake**: remove manual tags override *(commit by [@mnb3000](https://github.com/mnb3000))*

### :wrench: Chores
- [`2880cda`](https://github.com/mnb3000/runpod-sdnext/commit/2880cda206b6fab67470682b5aa67ab3ee5669a9) - **release**: update CHANGELOG.md for v0.1.0 [skip ci] [norelease] *(commit by [@mnb3000](https://github.com/mnb3000))*


## [v0.1.0] - 2024-12-31
### :sparkles: New Features
- [`f7d4379`](https://github.com/mnb3000/runpod-sdnext/commit/f7d437933fd47969e0a8bccbdf1c036088f09617) - **backend**: use xformers, add mising env vars *(commit by [@mnb3000](https://github.com/mnb3000))*

### :bug: Bug Fixes
- [`7be5825`](https://github.com/mnb3000/runpod-sdnext/commit/7be582529122091457a79a8b3ab156f788d49963) - **uv**: remove uv from installation *(commit by [@mnb3000](https://github.com/mnb3000))*
- [`40781de`](https://github.com/mnb3000/runpod-sdnext/commit/40781deb378d97ca35d3c2acd191a5997825837b) - **docker**: forward $APP ARG to ENV *(commit by [@mnb3000](https://github.com/mnb3000))*
- [`c7a43d1`](https://github.com/mnb3000/runpod-sdnext/commit/c7a43d1d5bb537c097a23e9b9d428d557b96f35b) - **build**: replace missing env var with static value *(commit by [@mnb3000](https://github.com/mnb3000))*
- [`72d615b`](https://github.com/mnb3000/runpod-sdnext/commit/72d615bb1f029faea6ce4c32a9c39473e14cfbe3) - **docker-bake**: add missing `XFORMERS_VERSION` variable *(commit by [@mnb3000](https://github.com/mnb3000))*
- [`23b7888`](https://github.com/mnb3000/runpod-sdnext/commit/23b788861ea3f54141eab9b3919868188b911ab7) - **install**: fix broken arguments and add `--use-xformers` *(commit by [@mnb3000](https://github.com/mnb3000))*
- [`fe73c29`](https://github.com/mnb3000/runpod-sdnext/commit/fe73c2906bb46675a1881d40ce10dde85214f990) - **bake**: update `$APP` *(commit by [@mnb3000](https://github.com/mnb3000))*
- [`cf5f719`](https://github.com/mnb3000/runpod-sdnext/commit/cf5f71992dfd4001ca577492bc2885f44ea0689b) - **docker**: separate `$APP` and `$SD_BASEDIR` *(commit by [@mnb3000](https://github.com/mnb3000))*

### :recycle: Refactors
- [`d6b29b1`](https://github.com/mnb3000/runpod-sdnext/commit/d6b29b1b04d23e6b92c4563f23d1493f4f205586) - **install**: build without explicit torch reinstall *(commit by [@mnb3000](https://github.com/mnb3000))*

### :wrench: Chores
- [`7b78302`](https://github.com/mnb3000/runpod-sdnext/commit/7b78302555f8fe630dba81eee6e0bb589eabab9c) - **release**: update CHANGELOG.md for v0.0.3 [skip ci] [norelease] *(commit by [@mnb3000](https://github.com/mnb3000))*
- [`bbe19b7`](https://github.com/mnb3000/runpod-sdnext/commit/bbe19b79c28a3d7c79ae30c549c986b8393d597b) - **build**: cleanup uv leftovers *(commit by [@mnb3000](https://github.com/mnb3000))*
- [`3017694`](https://github.com/mnb3000/runpod-sdnext/commit/30176940ea2dbb037e0331e9ac8e9fbfc11a6766) - **docker**: add missing ARG *(commit by [@mnb3000](https://github.com/mnb3000))*
- [`5f97955`](https://github.com/mnb3000/runpod-sdnext/commit/5f9795576bc06927706338f9e2beec2b5a201922) - **bake**: bump xformers *(commit by [@mnb3000](https://github.com/mnb3000))*
- [`309cec6`](https://github.com/mnb3000/runpod-sdnext/commit/309cec6fc9cfa7fddd97c705cb22eb464a4dc357) - **bake**: downgrade torch *(commit by [@mnb3000](https://github.com/mnb3000))*


## [v0.0.3] - 2024-12-31
### :bug: Bug Fixes
- [`5eaae23`](https://github.com/mnb3000/runpod-sdnext/commit/5eaae233820bef1900d0d90f6cfbb5031fbf0041) - **scripts**: fixed incorrect/broken paths *(commit by [@mnb3000](https://github.com/mnb3000))*

[v0.0.3]: https://github.com/mnb3000/runpod-sdnext/compare/v0.0.2...v0.0.3
[v0.1.0]: https://github.com/mnb3000/runpod-sdnext/compare/v0.0.3...v0.1.0
[v0.1.1]: https://github.com/mnb3000/runpod-sdnext/compare/v0.1.0...v0.1.1
[v0.1.2]: https://github.com/mnb3000/runpod-sdnext/compare/v0.1.1...v0.1.2
