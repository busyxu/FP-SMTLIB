(declare-fun FPCHECK_FINVALID_POW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun x_initial_ack!31 () (_ BitVec 64))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3feffbc4d1000000)
                           ((_ to_fp 11 53) x_initial_ack!31))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (FPCHECK_FINVALID_POW a!1 a!1)))

(check-sat)
(exit)
