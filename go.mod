module github.com/myfork/goose/v3

go 1.21

require (
	github.com/mfridman/interpolate v0.0.2
	github.com/mfridman/xsync v0.0.0-20240212174529-29a7df7f5a66
	go.uber.org/multierr v1.11.0
)

require (
	github.com/stretchr/testify v1.8.4 // test-only; should be in a separate block upstream
	go.uber.org/goleak v1.3.0 // test-only; should be in a separate block upstream
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
//   - TODO: experiment with replacing go.uber.org/multierr with stdlib errors
//     joining (errors.Join added in go1.20) once upstream drops the uber dep
//   - TODO: try bumping go directive to 1.22 to see if anything breaks;
//     upstream still targets 1.21 but my local toolchain is 1.22
//   - NOTE: stretchr/testify and goleak should be in a separate require block
//     marked as test-only; worth filing an upstream issue or sending a PR
//     (added inline comments above as a reminder until that gets sorted)
//   - TODO: look into replacing xsync with sync.Map from stdlib; xsync is
//     only used for the migration registry map and the stdlib version should
//     be sufficient for our use case (less deps is better for a learning fork)
//   - DONE: confirmed errors.Join works as a drop-in for multierr.Combine in
//     simple cases; need to check if multierr's Unwrap behavior is relied upon
//     anywhere before fully removing the dep
