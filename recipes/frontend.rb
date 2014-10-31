nodes = search(:node, 'run_list:recipe\[orchestrate\:\:backend\]')

node['orchestrate']['backend']['ips'] = nodes.collect{|n| n.ip_address } unless nodes.size == 0

log(node['orchestrate']['backend']['ips'])