(declare-fun a_ack!15 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!15) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!15) ((_ to_fp 11 53) #x1fff5de25335c4ee))))
(assert (FPCHECK_FDIV_OVERFLOW #x3ff0000000000000 a_ack!15))

(check-sat)
(exit)
