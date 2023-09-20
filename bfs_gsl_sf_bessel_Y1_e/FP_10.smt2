(declare-fun a_ack!34 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!34) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!34) ((_ to_fp 11 53) #x001922d0e5604189))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!34) ((_ to_fp 11 53) #x3e60000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!34) ((_ to_fp 11 53) #x4010000000000000)))

(check-sat)
(exit)
