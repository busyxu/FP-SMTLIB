(declare-fun c_ack!833 () (_ BitVec 64))
(declare-fun b_ack!832 () (_ BitVec 64))
(declare-fun a_ack!834 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!832))
            (fp.abs ((_ to_fp 11 53) c_ack!833)))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!834))
       (fp.abs ((_ to_fp 11 53) c_ack!833))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!834))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!834))
                           (fp.abs ((_ to_fp 11 53) a_ack!834)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!834))
                           (fp.abs ((_ to_fp 11 53) a_ack!834)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!832))
                           (fp.abs ((_ to_fp 11 53) a_ack!834)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!832))
                           (fp.abs ((_ to_fp 11 53) a_ack!834)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!833))
                           (fp.abs ((_ to_fp 11 53) a_ack!834)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!833))
                           (fp.abs ((_ to_fp 11 53) a_ack!834))))))
  (FPCHECK_FADD_UNDERFLOW (fp.add roundNearestTiesToEven a!1 a!2) a!3)))

(check-sat)
(exit)
