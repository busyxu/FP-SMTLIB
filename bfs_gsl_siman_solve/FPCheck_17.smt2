(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun x_initial_ack!28 () (_ BitVec 64))
(assert (FPCHECK_FSUB_UNDERFLOW
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) #x3feffbc4d1000000)
          ((_ to_fp 11 53) x_initial_ack!28))
  #x3ff0000000000000))

(check-sat)
(exit)
