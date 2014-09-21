-- * Map type
data AliasMap k a = AliasMap [(Set k, a)]
-- * Operators
(!)        :: AliasMap k a -> k -> a
-- * Query
lookup     :: k -> AliasMap k a -> Maybe a
lookup'    :: k -> AliasMap k a -> Maybe (Set k, a)
lookupAny' :: Set k -> AliasMap k a -> Maybe (Set k, a)
synonyms   :: k -> AliasMap k a -> Set k
-- * Insertion
insert     :: k -> a -> AliasMap k a -> AliasMap k a
addSynonym :: k -> k -> AliasMap k a -> AliasMap k a
-- * Combine
union         :: AliasMap k a -> AliasMap k a -> AliasMap k a
unionWithKeys :: ...
mergeWithKeys :: ...
-- * Traversal
map        :: (a -> b) -> AliasMap k a -> AliasMap k b
-- * Conversion
elems      :: AliasMap k a -> [a]
keys       :: AliasMap k a -> [Set k]
assocs     :: AliasMap k a -> [(Set k, a)]
