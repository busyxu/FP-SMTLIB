(declare-fun d_ack!28 () (_ BitVec 64))
(declare-fun a_ack!29 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!28) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!29) ((_ to_fp 11 53) #xbfe0000000000000)))

(check-sat)
(exit)
