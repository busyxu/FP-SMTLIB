(declare-fun c_ack!569 () (_ BitVec 64))
(declare-fun b_ack!568 () (_ BitVec 64))
(declare-fun a_ack!570 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!568))
       (fp.abs ((_ to_fp 11 53) c_ack!569))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!570))
            (fp.abs ((_ to_fp 11 53) b_ack!568)))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!568))
       (fp.abs ((_ to_fp 11 53) c_ack!569))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!568))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!570))
                           (fp.abs ((_ to_fp 11 53) b_ack!568)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!570))
                           (fp.abs ((_ to_fp 11 53) b_ack!568)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!568))
                           (fp.abs ((_ to_fp 11 53) b_ack!568)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!568))
                           (fp.abs ((_ to_fp 11 53) b_ack!568)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!569))
                           (fp.abs ((_ to_fp 11 53) b_ack!568)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!569))
                           (fp.abs ((_ to_fp 11 53) b_ack!568))))))
  (FPCHECK_FADD_UNDERFLOW (fp.add roundNearestTiesToEven a!1 a!2) a!3)))

(check-sat)
(exit)
