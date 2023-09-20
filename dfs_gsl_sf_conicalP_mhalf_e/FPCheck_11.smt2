(declare-fun b_ack!19 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!19) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!19) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!19) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (FPCHECK_FSUB_OVERFLOW b_ack!19 #x3ff0000000000000))

(check-sat)
(exit)
