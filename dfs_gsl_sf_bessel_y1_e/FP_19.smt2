(declare-fun a_ack!210 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!210) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!210) ((_ to_fp 11 53) #x001922d0e5604189)))

(check-sat)
(exit)
