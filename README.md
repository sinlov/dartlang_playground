[![dart-ubuntu-latest](https://github.com/sinlov/dartlang_playground/workflows/dart-ubuntu-latest/badge.svg?branch=main)](https://github.com/sinlov/dartlang_playground/actions?query=workflow%3Adart-ubuntu-latest)

# dartlang playground

- [https://github.com/sinlov/dartlang_playground/](https://github.com/sinlov/dartlang_playground/)

## env

| item | version |
|:----------------|:----------------|
| dartlang | 2.12.0-236.0.dev |

## package

- dev

| item | version |
|:----------------|:----------------|
| test | `^1.15.7` |
| build_runner | `^1.11.0` |
| json_serializable | `^3.5.1`

- run

| item | version |
|:----------------|:----------------|
| intl | `^0.16.0` |
| characters | `^1.0.0` |
| json_annotation | `^3.1.1` |

## run

```bash
# check env
$ make env
# init project
$ make init

# run test
$ make test

# run build_runner build, this not neccessary
$ make build
```

## project tree

```
.
├── Makefile              # make build
├── README.md             # readme
├── Rakefile              # code generator use as: rake -T
├── build.yaml            # build_runner build set
├── coverage              # test coverage, out of versioning
├── dart_test.yaml        # dart test config
├── lib                   # source code
│   ├── playground          # source of playground
│   └── tour                # source of tour
├── pubspec.lock          # pub lock
├── pubspec.yaml          # pub define
├── reports               # test reports, out of versioning
└── test                  # test folder
    ├── playground          # unit test of playground
    └── tour                # unit test of tour
```