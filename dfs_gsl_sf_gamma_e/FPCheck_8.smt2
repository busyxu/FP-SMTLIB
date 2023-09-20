(declare-fun a_ack!10 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!10) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!10) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!10) ((_ to_fp 11 53) #x4065600000000000))))
(assert (FPCHECK_FSUB_ACCURACY a_ack!10 #x3ff0000000000000))

(check-sat)
(exit)
