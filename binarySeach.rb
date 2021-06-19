def binary_search(query, arr)
    return false if arr.length<=1 && (arr[0] == nil || arr[0] != query)
    if arr.length==2
        return true if arr[0]==query || arr[1]==query
        return false
    end
    midpoint = (arr.length/2).floor
    return true if arr[midpoint]==query
    left = arr[0..midpoint-1]
    right = arr[midpoint..arr.length]
    return binary_search(query, left) if arr[midpoint] > query
    return binary_search(query, right) if arr[midpoint] < query
end