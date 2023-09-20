(declare-fun h_ack!36 () (_ BitVec 64))
(declare-fun x_ack!37 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_POW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (let ((a!1 (fp.eq (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53) x_ack!37)
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) h_ack!36)
                                  ((_ to_fp 11 53) #x4010000000000000)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!37)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) h_ack!36)
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (FPCHECK_FINVALID_POW a!1 a!1)))

(check-sat)
(exit)
