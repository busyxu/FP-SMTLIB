(declare-fun y_ack!295 () (_ BitVec 64))
(declare-fun x_ack!296 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) y_ack!295) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) y_ack!295)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) y_ack!295))
                           (fp.abs ((_ to_fp 11 53) y_ack!295)))
                   (fp.abs ((_ to_fp 11 53) y_ack!295)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) y_ack!295)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) y_ack!295)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) y_ack!295))
                           (fp.abs ((_ to_fp 11 53) y_ack!295)))
                   (fp.abs ((_ to_fp 11 53) y_ack!295)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) y_ack!295)))))
(assert (let ((a!1 (fp.leq (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) x_ack!296))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3fe488ce703afb7f))))
  (not a!1)))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) x_ack!296))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (FPCHECK_FMUL_ACCURACY (fp.abs ((_ to_fp 11 53) y_ack!295)) #x7ff8000000000001))

(check-sat)
(exit)
