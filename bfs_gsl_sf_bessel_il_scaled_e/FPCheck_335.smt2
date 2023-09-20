(declare-fun b_ack!1240 () (_ BitVec 64))
(declare-fun a_ack!1241 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1240) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!1241 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1240) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!1241)))
(assert (not (= #x00000001 a_ack!1241)))
(assert (= #x00000002 a_ack!1241))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1240) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!1240))
            ((_ to_fp 11 53) #x2020000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!1240))
            ((_ to_fp 11 53) #x3fd0000000000000))))
(assert (let ((a!1 (CF_exp (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc000000000000000)
                           (fp.abs ((_ to_fp 11 53) b_ack!1240)))))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!1240))
                           (fp.abs ((_ to_fp 11 53) b_ack!1240)))
                   (fp.abs ((_ to_fp 11 53) b_ack!1240)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1240)
                                   ((_ to_fp 11 53) b_ack!1240)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!1)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.abs ((_ to_fp 11 53) b_ack!1240)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!1))))
  (FPCHECK_FMUL_UNDERFLOW
    #x3ff0000000000000
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    (fp.sub roundNearestTiesToEven a!2 a!3))
            a!4)))))

(check-sat)
(exit)
