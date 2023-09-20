(declare-fun h_ack!62 () (_ BitVec 64))
(declare-fun x_ack!63 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_POW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (let ((a!1 (fp.eq (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53) x_ack!63)
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) h_ack!62)
                                  ((_ to_fp 11 53) #x4010000000000000)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!63)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe8000000000000)
                           ((_ to_fp 11 53) h_ack!62)))))
  (FPCHECK_FINVALID_POW a!1 a!1)))

(check-sat)
(exit)
