(declare-fun y_ack!353 () (_ BitVec 64))
(declare-fun x_ack!354 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) y_ack!353) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) y_ack!353)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) y_ack!353))
                           (fp.abs ((_ to_fp 11 53) y_ack!353)))
                   (fp.abs ((_ to_fp 11 53) y_ack!353)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) y_ack!353)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) y_ack!353)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) y_ack!353))
                           (fp.abs ((_ to_fp 11 53) y_ack!353)))
                   (fp.abs ((_ to_fp 11 53) y_ack!353)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) y_ack!353)))))
(assert (fp.leq (fp.div roundNearestTiesToEven
                (fp.abs ((_ to_fp 11 53) x_ack!354))
                ((_ to_fp 11 53) #x3ff0000000000000))
        ((_ to_fp 11 53) #x3fe488ce703afb7f)))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) x_ack!354))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FSUB_ACCURACY #x3ff0000000000000 (fp.abs ((_ to_fp 11 53) x_ack!354))))

(check-sat)
(exit)
