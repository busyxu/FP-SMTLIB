(declare-fun b_ack!463 () (_ BitVec 64))
(declare-fun x_ack!464 () (_ BitVec 64))
(declare-fun a_ack!462 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (and (fp.eq ((_ to_fp 11 53) x_ack!464)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) b_ack!463)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!464) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!464)
                    ((_ to_fp 11 53) b_ack!463))
            ((_ to_fp 11 53) a_ack!462))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!462) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!464)
                    ((_ to_fp 11 53) b_ack!463))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!464)
                    ((_ to_fp 11 53) b_ack!463))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!464)
               ((_ to_fp 11 53) b_ack!463))
       ((_ to_fp 11 53) #x4034000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!462) ((_ to_fp 11 53) #x4024000000000000))))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!464)
               ((_ to_fp 11 53) b_ack!463))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fe0000000000000)
               ((_ to_fp 11 53) a_ack!462))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!464)
                           ((_ to_fp 11 53) b_ack!463))
                   ((_ to_fp 11 53) a_ack!462))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven (CF_log a!1) a!1)
                 a!1)
         (CF_log a!1))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!464)
                           ((_ to_fp 11 53) b_ack!463))
                   ((_ to_fp 11 53) a_ack!462))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (CF_log a!1)
                 (fp.sub roundNearestTiesToEven (CF_log a!1) a!1))
         a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!464)
                           ((_ to_fp 11 53) b_ack!463))
                   ((_ to_fp 11 53) a_ack!462))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.abs (CF_log a!1))
                           (fp.abs a!1))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   a!2
                   (fp.add roundNearestTiesToEven
                           (fp.abs (CF_log a!1))
                           (fp.abs a!1)))))
  (fp.eq a!3 ((_ to_fp 11 53) #x3ff0000000000000))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!464)
                           ((_ to_fp 11 53) b_ack!463))
                   ((_ to_fp 11 53) a_ack!462))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.abs (CF_log a!1))
                           (fp.abs a!1))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!2
                 ((_ to_fp 11 53) #x3ff0000000000000))
         (fp.add roundNearestTiesToEven (fp.abs (CF_log a!1)) (fp.abs a!1))))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!462) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!462) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!462) ((_ to_fp 11 53) #x4000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!462) ((_ to_fp 11 53) #x4024000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!462) ((_ to_fp 11 53) #x40c0000000000000)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!462)
                  ((_ to_fp 11 53) a_ack!462)))
  #xbf9e4286cb0f5398))

(check-sat)
(exit)
