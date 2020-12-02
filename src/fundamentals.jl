
# Company Overview (https://www.alphavantage.co/documentation/#company-overview)
# ex: https://www.alphavantage.co/query?function=OVERVIEW&symbol=IBM&apikey=demo

function company_overview(symbol::String; outputsize::String="compact", datatype::String="json")
    @argcheck in(datatype, ["json", "csv"])
    uri = _form_uri_head("OVERVIEW") * "&symbol=$symbol" * _form_uri_tail(outputsize, datatype)
    data = _get_request(uri)
    return _parse_response(data, datatype)
end
export company_overview

# Income Statement (https://www.alphavantage.co/documentation/#income-statement)
# ex: https://www.alphavantage.co/query?function=INCOME_STATEMENT&symbol=IBM&apikey=demo

function income_statement(symbol::String; outputsize::String="compact", datatype::String="json")
    @argcheck in(datatype, ["json", "csv"])
    uri = _form_uri_head("INCOME_STATEMENT") * "&symbol=$symbol" * _form_uri_tail(outputsize, datatype)
    data = _get_request(uri)
    return _parse_response(data, datatype)
end
export income_statement

# Balance Sheet (https://www.alphavantage.co/documentation/#balance-sheet)
# ex: https://www.alphavantage.co/query?function=BALANCE_SHEET&symbol=IBM&apikey=demo

function balance_sheet(symbol::String; outputsize::String="compact", datatype::String="json")
    @argcheck in(datatype, ["json", "csv"])
    uri = _form_uri_head("BALANCE_SHEET") * "&symbol=$symbol" * _form_uri_tail(outputsize, datatype)
    data = _get_request(uri)
    return _parse_response(data, datatype)
end
export balance_sheet

# Cash Flow (https://www.alphavantage.co/documentation/#cash-flow)
# ex: https://www.alphavantage.co/query?function=CASH_FLOW&symbol=IBM&apikey=demo

function cash_flow(symbol::String; outputsize::String="compact", datatype::String="json")
    @argcheck in(datatype, ["json", "csv"])
    uri = _form_uri_head("CASH_FLOW") * "&symbol=$symbol" * _form_uri_tail(outputsize, datatype)
    data = _get_request(uri)
    return _parse_response(data, datatype)
end
export cash_flow

# Earnings (https://www.alphavantage.co/documentation/#earnings)
# ex: https://www.alphavantage.co/query?function=EARNINGS&symbol=IBM&apikey=demo

function earnings(symbol::String; outputsize::String="compact", datatype::String="json")
    @argcheck in(datatype, ["json", "csv"])
    uri = _form_uri_head("EARNINGS") * "&symbol=$symbol" * _form_uri_tail(outputsize, datatype)
    data = _get_request(uri)
    return _parse_response(data, datatype)
end
export earnings
