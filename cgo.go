package goctp

//go:generate swig -go -c++ -intgosize 64 -v goctp.i

/*
#cgo linux LDFLAGS: -L${SRCDIR}/lib -lthostmduserapi_se -lthosttraderapi_se -v
#cgo linux CPPFLAGS: -I${SRCDIR}/include
*/
import "C"
