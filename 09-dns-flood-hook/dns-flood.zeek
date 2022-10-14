global recent_queries: table[string] of count &create_expire=60secs &default=0;
global spammy_queries: set[string] &create_expire=60mins;

hook DNS::log_policy(rec: DNS::Info, id: Log::ID, filter: Log::Filter)
{
    if (!rec?$query)
        return;

    local q = rec$query;
    if (++recent_queries[q] > 500) {
        add spammy_queries[q];
    }

    if ( q in spammy_queries )
        break;
}
