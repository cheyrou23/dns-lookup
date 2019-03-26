# Domain names DNS lookup

Simple bash script to get the domain owner from WHOIS info from Jisc:

[https://community.jisc.ac.uk/janet-apps/whois](https://community.jisc.ac.uk/janet-apps/whois)

and output to a csv.

Output looks like:

> Domain owner:Domain

> Example Town Council:example.gov.uk

> Example University:example.ac.uk

This is a WHOIS server for querying registrations under ac.uk and gov.uk.

1\. Edit domains.txt

2\. Add one domain name per line

3\. Run bash lookup.sh

4\. View domains.csv for results

Options like printing results to terminal while running can be enabled in lookup.sh

_Important note: Server will rate limit at a certain point. Be careful not to overload the server. Only holds WHOIS data for gov.uk and ac.uk._
