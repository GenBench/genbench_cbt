from urllib.parse import urlparse


def is_valid_url(url: str) -> bool:
    """Check if a URL is valid."""
    try:
        result = urlparse(url)
        return all([result.scheme, result.netloc]) or result.scheme == "file"
    except ValueError:
        return False
