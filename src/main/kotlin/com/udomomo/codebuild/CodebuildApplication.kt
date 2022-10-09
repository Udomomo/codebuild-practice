package com.udomomo.codebuild

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication

@SpringBootApplication
class CodebuildApplication

fun main(args: Array<String>) {
	runApplication<CodebuildApplication>(*args)
}
