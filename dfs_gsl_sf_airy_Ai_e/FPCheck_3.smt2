(declare-fun a_ack!6 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!6) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (FPCHECK_FINVALID_SQRT a_ack!6 a_ack!6))

(check-sat)
(exit)
