(declare-fun a_ack!16 () (_ BitVec 64))
(declare-fun b_ack!15 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.gt ((_ to_fp 11 53) a_ack!16) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.geq ((_ to_fp 11 53) b_ack!15) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FINVALID_SQRT a_ack!16 a_ack!16))

(check-sat)
(exit)
