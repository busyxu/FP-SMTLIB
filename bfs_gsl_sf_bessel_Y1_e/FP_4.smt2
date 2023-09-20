(declare-fun a_ack!23 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!23) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!23) ((_ to_fp 11 53) #x1ff0000000000001))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!23) ((_ to_fp 11 53) #x3fd0000000000000)))

(check-sat)
(exit)
