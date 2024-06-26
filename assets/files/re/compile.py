import re
email = re.compile('\w+@\w+\.[a-z]{1}')
text = "To email Guido, try guido@python.org or guido@google.com "
print(email.findall(text))
------------------------------------------
import re
text = "To email Guido, try guido@python.org or guido@google.com "
email3=re.compile(r'([\w.]+)@(\w+)\.([a-z]{3})')
print(email3.findall(text))
------------------------------------------
import re
text = "To email Guido, try guido@python.org or guido@google.com "
email4=re.compile(r'(?P<user>[\w.]+)@(?P<domain>\w+).(?P<suffix>[a-z]{3})')
match=email4.match('guido@python.org')
print(match.groupdict())