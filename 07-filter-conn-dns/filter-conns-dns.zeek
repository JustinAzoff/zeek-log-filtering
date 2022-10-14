hook Conn::log_policy(rec: Conn::Info, id: Log::ID, filter: Log::Filter)
{
    if (rec?$service && rec$service == "dns" && rec$orig_pkts <= 2 && rec$resp_pkts <= 2)
        break;
}
