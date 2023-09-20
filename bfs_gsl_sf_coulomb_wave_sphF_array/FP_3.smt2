(declare-fun d_ack!30 () (_ BitVec 64))
(declare-fun a_ack!31 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!30) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!31) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!30) ((_ to_fp 11 53) #x0024000000000001))))

(check-sat)
(exit)
