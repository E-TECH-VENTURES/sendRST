#
#if 
#TCP RST packet not need an acknowledgement? Is it because the sender of RST will continue to send RSTs every time it receives another packet from the other side?

On a related note, how can the acknowledgement number in a valid RST packet be 0?

#then consider 
#@the segment with the RST bit set is supposed to terminate the connection, nothing more. Acknowledgement number only makes sense when the connection is established and the ACK bit is set in the segement. The receiver of a RST segment should also consider the possibility that the application protocol client at the other end was abruptly terminated and did not have a chance to process the unacknowledged data that was sent to it.

#If the ACK control bit is set this field contains the value of the

  next sequence number the sender of the segment is expecting to

  receive.  Once a connection is established this is always sent.
  
  #:::
  since the connection is not valid any more, there is no need to reply an ACK. And since the remote peer do not known the connection, it make sense that the ACK in a RST packet is 0
  
