(declare-fun a_ack!142 () (_ BitVec 64))
(declare-fun c_ack!141 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!142) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!141) ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
