(declare-fun a_ack!4 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4) ((_ to_fp 11 53) #x4059000000000000))))
(assert (FPCHECK_FSUB_ACCURACY a_ack!4 #x3ff0000000000000))

(check-sat)
(exit)
