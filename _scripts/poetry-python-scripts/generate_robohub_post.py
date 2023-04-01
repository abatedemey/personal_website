import feedparser

robohub_feed = feedparser.parse('https://feeds.feedburner.com/robotspodcast')
latest_entry = robohub_feed.entries[17]

# Remove the links section from the summary
summary = latest_entry.summary.split('Links')[0]

temp_title = latest_entry.title.replace('  ', '-')
temp_title = temp_title.replace(',', '')
temp_title = temp_title.replace(':', '')

# Generate the post title
title = (
    f"{latest_entry.published_parsed.tm_year}-"
    f"{latest_entry.published_parsed.tm_mon:0>2}-"
    f"{latest_entry.published_parsed.tm_mday:0>2}-"
    f"{temp_title.replace(' ', '-')}"
)

path_to_post = f"../../_posts/{title}.md"

# Generate the post
post = (
    f"---\n"
    f"layout: post\n"
    f"title: {latest_entry.title.split(':')[1]}\n"
    f"---\n"
    f"<img class=\"alignnone size-large wp-image-95833\" src=\"{latest_entry.image.href}\" alt=\"robohub cover image\">\n"
    f"{summary}\n"
    #f"<a href=\"{latest_entry.link}\">Read more</a>\n"
)


print(title)

with open(path_to_post, 'w', encoding="utf-8") as f:
    f.write(post)
