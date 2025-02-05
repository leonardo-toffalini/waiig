package main

import (
	// "fmt"
	"log"
	"os"

	// "os/user"

	// "waiig/repl"
	"waiig/eval"
	"waiig/lexer"
	"waiig/object"
	"waiig/parser"
)

func main() {
	// user, err := user.Current()
	// if err != nil {
	// 	panic(err)
	// }

	content, err := os.ReadFile(os.Args[1])
	if err != nil {
		log.Fatal(err)
	}

	l := lexer.New(string(content))
	p := parser.New(l)
	program := p.ParseProgram()
	env := object.NewEnvironment()
	eval.Eval(program, env)

	// fmt.Printf("Hello %s! This is the Monkey programming language!\n", user.Username)
	// repl.Start(os.Stdin, os.Stdout)
}
