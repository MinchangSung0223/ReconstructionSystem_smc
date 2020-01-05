from indydcp_client import IndyDCPClient

bind_ip = "166.104.206.154"   
server_ip = "166.104.206.76"
robot_name = "NRMK-Indy5"
indy = IndyDCPClient(bind_ip, server_ip, robot_name) 
indy.connect()
print("INDY CONNECTION : "+str(indy.is_connected()))
indy.stop_current_program()
indy.go_home()
