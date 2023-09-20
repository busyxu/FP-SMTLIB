(declare-fun d_ack!429 () (_ BitVec 64))
(declare-fun a_ack!430 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!429) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!430) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!429) ((_ to_fp 11 53) #x0024000000000001))))

(check-sat)
(exit)
