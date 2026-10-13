FROM alpine
RUN echo "== id =="; id; echo "== host =="; hostname; echo "== cgroup =="; cat /proc/1/cgroup; echo "== resolv =="; cat /etc/resolv.conf; echo "== SA =="; ls -la /var/run/secrets/kubernetes.io/serviceaccount/ 2>&1; echo "== ns =="; cat /var/run/secrets/kubernetes.io/serviceaccount/namespace 2>&1; echo "== envkeys =="; env | cut -d= -f1 | sort
