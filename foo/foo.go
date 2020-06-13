package main

import (
    "fmt"

    "github.com/dustin/go-jsonpointer"
    "github.com/ceejatec/bar"
)

func main() {
    statsBytes := make([]byte, 0)
    countPointers := make([]string, 0)
    _, err := jsonpointer.FindMany(statsBytes, countPointers)

    if err == nil {
        msg := bar.World()
        fmt.Println(msg)
    }
}