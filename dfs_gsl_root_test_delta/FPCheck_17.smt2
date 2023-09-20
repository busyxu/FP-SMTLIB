(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun x_ack!28 () (_ BitVec 64))
(assert (FPCHECK_FADD_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4000000000000000)
          ((_ to_fp 11 53) x_ack!28))
  #x0000000000000000))

(check-sat)
(exit)
