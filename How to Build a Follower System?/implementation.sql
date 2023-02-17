--Follower Implementation
CREATE TABLE followers (
    id SERIAL PRIMARY KEY,
    created_at TIMESTAMP  WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    leader_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    follower_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    UNIQUE(leader_id,follower_id)
);