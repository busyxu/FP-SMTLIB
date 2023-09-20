(declare-fun d_ack!60 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun b_ack!59 () (_ BitVec 32))
(declare-fun a_ack!61 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) d_ack!60) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_ACCURACY
  a_ack!61
  ((_ to_fp 11 53) roundNearestTiesToEven b_ack!59)))

(check-sat)
(exit)
