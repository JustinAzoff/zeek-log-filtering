hook Conn::log_policy(rec: Conn::Info, id: Log::ID, filter: Log::Filter)
{
    if (rec$history == "S" || rec$history == "Sr" )
        break;
}
