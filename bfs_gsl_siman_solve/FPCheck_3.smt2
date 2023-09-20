(declare-fun FPCHECK_FINVALID_POW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun x_initial_ack!5 () (_ BitVec 64))
(assert (FPCHECK_FINVALID_POW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x_initial_ack!5)
          ((_ to_fp 11 53) #x3ff0000000000000))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x_initial_ack!5)
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
