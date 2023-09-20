(declare-fun h_ack!54 () (_ BitVec 64))
(declare-fun x_ack!55 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_POW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!55)
                    ((_ to_fp 11 53) h_ack!54))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!55)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) h_ack!54)
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (FPCHECK_FINVALID_POW a!1 a!1)))

(check-sat)
(exit)
