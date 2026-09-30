import sys
import hashlib
from datetime import datetime

from database import get_connection, init_db, show_database
from crypto_utils import generate_key_pair, hash_transaction, sign_data, verify_signature


def hash_password(password):
    return hashlib.sha256(password.encode("utf-8")).hexdigest()


def money(value):
    return f"{value:,.0f} VNĐ"

if __name__ == "__main__":
    init_db()

    show_database()
    # TEST: thay đổi số tiền giao dịch để kiểm tra chữ ký
    #conn = get_connection()
    #cur = conn.cursor()

    #cur.execute("""
    #    UPDATE transactions
    #    SET amount = 9000000
    #    WHERE id = 1
    #""")

    #conn.commit()
    #conn.close()