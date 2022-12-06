# Postmortem
The following is the incident report for the outage that occurred on my web infrastructure on  November 28, 2022. This resulted in some inconveniences as the one of the servers was inaccessible.


## Issue Summary

It was from 4:06pm that the server became inaccessible. The page displayed error 500 and it affected 100% of traffic to this server. The root cause of this outage was an exhaustion of memory on the server. 


#3 Timeline (all in West African Time):

3:18 PM: Server decreased response became noticeable.
4:06 PM: Server became inaccessible.
4:20 PM: Unable to log into server to make amendments.
4:33 PM: Created a new server and sent all traffic from the old server to the new server.
5:05 PM: New server began operating.
5:10 PM: 100% of traffic is back online.


## Root Cause:

It became evident at 3:58 PM that the server had a problem. There was no response to the query sent to the server. The main reason for this is memory exhaustion as there was no space left on the server. When I wanted to ssh into the server to confirm and correct the issue, I discovered that the firewall 22/TCP port was inactive. Therefore, I could not ssh into the server. The issue was solved by creating a new server and directing all traffic to it. 

## Resolution and Recovery:

After noticing that there's problem with the firewall at 4:33 PM, I had to create a new server immediately and direct all traffic to it, improve the framework and the database queries. 


## Corrective and Preventative Measures:

What happened was a mistake. However, I've made it compulsory to;

Always check and confirm the ufw status before exiting a server.

Share the load of a server among more servers. 


