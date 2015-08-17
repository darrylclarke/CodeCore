require "open-uri"

#  http://en.wikipedia.org/wiki/Ada_Lovelace

remote_base_url = "http://en.wikipedia.org/wiki"
remote_page_name = "Ada_Lovelace"
remote_full_url = remote_base_url + "/" + remote_page_name

remote_data = open(remote_full_url).read
my_local_file = open("my-downloaded-page.html", "w")

my_local_file.write(remote_data)
my_local_file.close
