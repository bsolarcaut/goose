module github.com/myfork/goose/v3

go 1.21

require (
	github.com/mfridman/interpolate v0.0.2
	github.com/mfridman/xsync v0.0.0-20240212174529-29a7df7f5a66
	go.uber.org/multierr v1.11.0
)

require (
	github.com/stretchr/testify v1.8.4
	go.uber.org/goleak v1.3.0
)

require (
	github.com/davecgh/go-spew v1.1.1 // indirect
	github.com/pmezard/go-difflib v1.0.0 // indirect
	go.uber.org/atomic v1.11.0 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
)

// personal fork - tracking upstream pressly/goose for learning purposes
// upstream: https://github.com/pressly/goose
//
// Notes:
//   - studying how goose handles migration versioning and locking
//   - go.uber.org/atomic is a transitive dep from multierr; can likely be
//     dropped once multierr upgrades to use sync/atomic from stdlib
