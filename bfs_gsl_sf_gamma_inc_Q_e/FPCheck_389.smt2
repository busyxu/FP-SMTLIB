(declare-fun a_ack!1084 () (_ BitVec 64))
(declare-fun b_ack!1083 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1084) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1083) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1083) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1084) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq ((_ to_fp 11 53) b_ack!1083)
        (fp.mul roundNearestTiesToEven
                ((_ to_fp 11 53) #x3fe0000000000000)
                ((_ to_fp 11 53) a_ack!1084))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1084) ((_ to_fp 11 53) #x4024000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1083)
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fe0000000000000)
               ((_ to_fp 11 53) a_ack!1084))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!1084))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1083)
                                  ((_ to_fp 11 53) a_ack!1084))
                          ((_ to_fp 11 53) a_ack!1084))
                  ((_ to_fp 11 53) b_ack!1083))))
  (not a!1)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1083)
                                  ((_ to_fp 11 53) a_ack!1084)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (fp.eq (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!1083)
               (fp.div roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!1083)
                       ((_ to_fp 11 53) a_ack!1084)))
       ((_ to_fp 11 53) a_ack!1084)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1083)
                                   ((_ to_fp 11 53) a_ack!1084)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1083)
                           ((_ to_fp 11 53) a_ack!1084)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 a!1
                 (fp.div roundNearestTiesToEven
                         ((_ to_fp 11 53) b_ack!1083)
                         ((_ to_fp 11 53) a_ack!1084)))
         (CF_log (fp.div roundNearestTiesToEven
                         ((_ to_fp 11 53) b_ack!1083)
                         ((_ to_fp 11 53) a_ack!1084))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1083)
                                   ((_ to_fp 11 53) a_ack!1084)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1083)
                           ((_ to_fp 11 53) a_ack!1084)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1083)
                                   ((_ to_fp 11 53) a_ack!1084)))
                   a!1)))
  (fp.eq a!2
         (fp.div roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!1083)
                 ((_ to_fp 11 53) a_ack!1084))))))
(assert (let ((a!1 (fp.abs (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1083)
                                   ((_ to_fp 11 53) a_ack!1084))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   a!1
                   (fp.abs (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1083)
                                   ((_ to_fp 11 53) a_ack!1084))))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.add roundNearestTiesToEven a!2 ((_ to_fp 11 53) #x3ff0000000000000))
    #x3cb0000000000000))))

(check-sat)
(exit)
