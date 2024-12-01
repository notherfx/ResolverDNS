while read domain; do
  dig +short $domain | grep -E "^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$";
done < domains.txt > resolved_ips.txt
