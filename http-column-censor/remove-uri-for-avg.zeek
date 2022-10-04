hook HTTP::log_policy(rec: HTTP::Info, id: Log::ID, filter: Log::Filter)
{
    if (! (rec?$uri && rec?$uri) )
        return;
    if (/avg/ in rec$host)
        rec$uri = gsub(rec$uri, /./, "x");
}
