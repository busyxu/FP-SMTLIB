(declare-fun c_ack!572 () (_ BitVec 64))
(declare-fun b_ack!571 () (_ BitVec 64))
(declare-fun a_ack!573 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!571))
       (fp.abs ((_ to_fp 11 53) c_ack!572))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!573))
            (fp.abs ((_ to_fp 11 53) b_ack!571)))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!571))
       (fp.abs ((_ to_fp 11 53) c_ack!572))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!571))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!573))
                           (fp.abs ((_ to_fp 11 53) b_ack!571)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!573))
                           (fp.abs ((_ to_fp 11 53) b_ack!571)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!571))
                           (fp.abs ((_ to_fp 11 53) b_ack!571)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!571))
                           (fp.abs ((_ to_fp 11 53) b_ack!571)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!572))
                           (fp.abs ((_ to_fp 11 53) b_ack!571)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!572))
                           (fp.abs ((_ to_fp 11 53) b_ack!571))))))
  (FPCHECK_FADD_ACCURACY (fp.add roundNearestTiesToEven a!1 a!2) a!3)))

(check-sat)
(exit)
