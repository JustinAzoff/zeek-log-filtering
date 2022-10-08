global recent_queries: table[string] of count &create_expire=60secs &default=0;
global spammy_queries: set[string] &create_expire=60mins;

function split_dns(id: Log::ID, path: string, rec: DNS::Info): string
{
    if (!rec?$query)
        return "dns";

    local q = rec$query;
    if (++recent_queries[q] > 500) {
        add spammy_queries[q];
    }

    if ( q in spammy_queries )
        return "dns_spammy";

    return "dns";
}

event zeek_init()
{
    local filter: Log::Filter = [
        $name="split-dns",
        $path_func=split_dns
    ];
    Log::remove_default_filter(DNS::LOG);
    Log::add_filter(DNS::LOG, filter);
}
