function string_split(str, ch) {
  var strlen = string_length(str);
  var o = ord(ch);
  for (var i = 1; i <= strlen; ++i) {
    if (string_ord_at(str, i) == o) {
      return [string_copy(str, 1, i - 1), string_copy(str, i + 1, strlen - i)];
    }
  }
  return [str];
}

function get_query_param(key) {
  for (var i = 0; i < parameter_count(); ++i) {
    var ps = parameter_string(i);
    var kv = string_split(ps, "=");
    if (array_length(kv) > 1 && kv[0] == key) {
      return kv[1];
    }
  }
  return "";
}
