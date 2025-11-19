# like tee command but timestamps and saves file to downloads
# Usage: curl google.com | teep google_curl_test
# Result file name: google_curl_test_2025-05-24_11-34-52.log
teep() {
  local base="$1"
  local timestamp=$(date +%Y-%m-%d_%H-%M-%S)
  local filename="${HOME}/Downloads/${base}_${timestamp}.log"
  tee -a "$filename"
}