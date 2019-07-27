def question_page(q): if .type == "WHAT_LINKS" then
    "# \(.number) What links?\n\n" + (q.question | rtrimstr("?") | split("; ") | map("* \(.)") | join("\n"))
else
    "# \(.number)\n\n\(q.question)"
end;

.questions |
    # Question pages
    map(question_page(.))

    # Repeat questions, interleaved with answers
    + map(question_page(.), .answer)

    # Summarise answers, five at a time
    + [
        (.[0:5]   | map("* \(.answer)") | join("\n")),
        (.[5:10]  | map("* \(.answer)") | join("\n")),
        (.[10:15] | map("* \(.answer)") | join("\n"))
    ]

    # Join into one big Markdown doc with pages separated by horizontal rules
    | join("\n\n---\n\n")
