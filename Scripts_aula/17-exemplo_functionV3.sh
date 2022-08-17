#!/bin/bash

adiciona () {
	soma=$(expr $1 + $2)
	echo $soma
}

adiciona 10 20
