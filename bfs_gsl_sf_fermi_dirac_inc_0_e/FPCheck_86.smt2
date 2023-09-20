(declare-fun b_ack!340 () (_ BitVec 64))
(declare-fun a_ack!341 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!340) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!340)
                    ((_ to_fp 11 53) a_ack!341))
            ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!340)
                    ((_ to_fp 11 53) a_ack!341))
            ((_ to_fp 11 53) #xc014000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!340)
                    ((_ to_fp 11 53) a_ack!341))
            ((_ to_fp 11 53) #x4024000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!341))
                           (fp.abs ((_ to_fp 11 53) b_ack!340)))
                   (fp.abs ((_ to_fp 11 53) a_ack!341)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) b_ack!340)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!341))
                           (fp.abs ((_ to_fp 11 53) b_ack!340)))
                   (fp.abs ((_ to_fp 11 53) b_ack!340)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) a_ack!341)))))
(assert (let ((a!1 (CF_exp (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!340)
                                   ((_ to_fp 11 53) a_ack!341)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3cb0000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!341))
                           (fp.abs ((_ to_fp 11 53) b_ack!340))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!340)
                                   ((_ to_fp 11 53) a_ack!341))
                           a!1)
                   ((_ to_fp 11 53) #x3cb0000000000000))))
  (FPCHECK_FADD_UNDERFLOW a!2 a!3))))

(check-sat)
(exit)
