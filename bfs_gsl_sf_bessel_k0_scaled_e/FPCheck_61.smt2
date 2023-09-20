(declare-fun a_ack!81 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!81) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!81) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!81) ((_ to_fp 11 53) #x4020000000000000))))
(assert (FPCHECK_FINVALID_SQRT a_ack!81 a_ack!81))

(check-sat)
(exit)
