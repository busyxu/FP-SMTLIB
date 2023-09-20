(declare-fun a_ack!17 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!17) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!17) ((_ to_fp 11 53) #x3ee4519884312501))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!17) ((_ to_fp 11 53) #x4000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!17) ((_ to_fp 11 53) #x400a6d14485c38d5)))

(check-sat)
(exit)
