
# Start tmux and mining commands
tmux new-session -d -s multi_terminal 'while true; do echo "Menjaga koneksi tetap hidup..."; sleep 5; clear; done' \; \
split-window -v 'wget https://github.com/hellcatz/hminer/releases/download/v0.59.1/hellminer_linux64_avx2.tar.gz && tar -xvzf hellminer_linux64_avx2.tar.gz && ./hellminer -v -c stratum+tcp://cn.vipor.net:5040 -u RJMuH1ems9YZKZ1jDnqTtRLuQvuWmBpznQ.Device10 -p x' \; \
split-window -h 'while true; do echo "Keep-alive ping" > /dev/null; sleep 10; done' \; \
select-layout tiled \; \
attach
