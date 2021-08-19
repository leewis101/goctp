package goctp

import (
	"io"
	"strings"

	"golang.org/x/text/encoding/simplifiedchinese"
	"golang.org/x/text/transform"
)

func DecodeGBK(s string) (string, error) {
	r := transform.NewReader(strings.NewReader(s), simplifiedchinese.GBK.NewDecoder())
	buf := new(strings.Builder)
	_, err := io.Copy(buf, r)
	if err != nil {
		return "", err
	}
	return buf.String(), nil
}
