hook HTTP::log_policy(rec: HTTP::Info, id: Log::ID, filter: Log::Filter)
{
    if (! (rec?$uri && rec?$uri) )
        return;
    if (/avg/ in rec$host)
        delete rec$uri;
}
