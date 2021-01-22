[![dart-ubuntu-latest](https://github.com/sinlov/dartlang_playground/workflows/dart-ubuntu-latest/badge.svg?branch=main)](https://github.com/sinlov/dartlang_playground/actions?query=workflow%3Adart-ubuntu-latest)

# dartlang playground

- [https://github.com/sinlov/dartlang_playground/](https://github.com/sinlov/dartlang_playground/)

## env

| item | version |
|:----------------|:----------------|
| dartlang | 2.12.0-236.0.dev |

## package

| item | version |
|:----------------|:----------------|
| test | 1.15.7 |
| intl | 0.16.1 |

## run

```bash
# check env
$ make env
# init project
$ make init

# run test
$ make test
```

## project tree

```
.
├── Makefile              # make build
├── README.md             # readme
├── coverage              # test coverage ignore
│   └── test
├── lib                   # source code
│   └── tour
├── pubspec.lock          # pub lock
├── pubspec.yaml          # pub define
└── test                  # test folder
    └── tour
        └── variables
```