(declare-fun c_ack!10 () (_ BitVec 64))
(declare-fun b_ack!9 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun a_ack!11 () (_ BitVec 32))
(assert (fp.eq ((_ to_fp 11 53) c_ack!10) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (bvsle #x00000001 b_ack!9)))
(assert (fp.eq ((_ to_fp 11 53) c_ack!10) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FADD_ACCURACY
  #x3ff0000000000000
  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!11)))

(check-sat)
(exit)
