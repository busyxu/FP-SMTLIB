(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun x_initial_ack!30 () (_ BitVec 64))
(assert (FPCHECK_FSUB_ACCURACY
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) #x3feffbc4d1000000)
          ((_ to_fp 11 53) x_initial_ack!30))
  #x3ff0000000000000))

(check-sat)
(exit)
