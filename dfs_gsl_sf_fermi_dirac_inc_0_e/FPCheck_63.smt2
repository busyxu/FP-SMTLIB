(declare-fun b_ack!238 () (_ BitVec 64))
(declare-fun a_ack!239 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!238) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!238)
                    ((_ to_fp 11 53) a_ack!239))
            ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!238)
                    ((_ to_fp 11 53) a_ack!239))
            ((_ to_fp 11 53) #xc014000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!238)
                    ((_ to_fp 11 53) a_ack!239))
            ((_ to_fp 11 53) #x4024000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!239))
                           (fp.abs ((_ to_fp 11 53) b_ack!238)))
                   (fp.abs ((_ to_fp 11 53) a_ack!239)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) b_ack!238)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!239))
                           (fp.abs ((_ to_fp 11 53) b_ack!238)))
                   (fp.abs ((_ to_fp 11 53) b_ack!238)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) a_ack!239)))))
(assert (let ((a!1 (CF_exp (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!238)
                                   ((_ to_fp 11 53) a_ack!239)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3cb0000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!239))
                           (fp.abs ((_ to_fp 11 53) b_ack!238))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!238)
                                   ((_ to_fp 11 53) a_ack!239))
                           a!1)
                   ((_ to_fp 11 53) #x3cb0000000000000))))
  (FPCHECK_FADD_ACCURACY a!2 a!3))))

(check-sat)
(exit)
