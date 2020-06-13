module github.com/ceejatec/foo

go 1.14

require (
	github.com/ceejatec/bar v0.0.0-00010101000000-000000000000
	github.com/dustin/go-jsonpointer v0.0.0-20160814072949-ba0abeacc3dc
)

replace github.com/ceejatec/bar => ../bar

replace github.com/ceejatec/foo => ../foo
