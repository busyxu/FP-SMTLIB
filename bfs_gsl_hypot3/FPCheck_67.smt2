(declare-fun c_ack!344 () (_ BitVec 64))
(declare-fun b_ack!343 () (_ BitVec 64))
(declare-fun a_ack!345 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!343))
            (fp.abs ((_ to_fp 11 53) c_ack!344)))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!345))
            (fp.abs ((_ to_fp 11 53) c_ack!344)))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!343))
            (fp.abs ((_ to_fp 11 53) c_ack!344)))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!344))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!345))
                           (fp.abs ((_ to_fp 11 53) c_ack!344)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!345))
                           (fp.abs ((_ to_fp 11 53) c_ack!344)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!343))
                           (fp.abs ((_ to_fp 11 53) c_ack!344)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!343))
                           (fp.abs ((_ to_fp 11 53) c_ack!344)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!344))
                           (fp.abs ((_ to_fp 11 53) c_ack!344)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!344))
                           (fp.abs ((_ to_fp 11 53) c_ack!344))))))
  (FPCHECK_FADD_ACCURACY (fp.add roundNearestTiesToEven a!1 a!2) a!3)))

(check-sat)
(exit)
