(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun a_ack!29 () (_ BitVec 64))
(declare-fun b_ack!28 () (_ BitVec 64))
(assert (FPCHECK_FADD_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!28)
          ((_ to_fp 11 53) a_ack!29))
  #x3fe0000000000000))

(check-sat)
(exit)
