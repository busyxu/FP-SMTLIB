(declare-fun CF_sin ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun b_ack!1272 () (_ BitVec 64))
(declare-fun a_ack!1273 () (_ BitVec 64))
(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_atan2
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             (_ FloatingPoint 11 53))
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1273)
                    (CF_sin b_ack!1272))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1273)
                                   (CF_cos b_ack!1272))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1273)
                                   (CF_cos b_ack!1272)))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1273)
                                   (CF_sin b_ack!1272))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1273)
                                   (CF_sin b_ack!1272))))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3ff0000000000000))
                 ((_ to_fp 11 53) #x3ff0000000000000))
         a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1273)
                                   (CF_cos b_ack!1272))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1273)
                                   (CF_cos b_ack!1272)))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1273)
                                   (CF_sin b_ack!1272))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1273)
                                   (CF_sin b_ack!1272))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3ff0000000000000)))
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1273)
                                   (CF_cos b_ack!1272))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1273)
                                   (CF_cos b_ack!1272)))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1273)
                                   (CF_sin b_ack!1272))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1273)
                                   (CF_sin b_ack!1272))))))
  (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3ff0000000000000)))
         ((_ to_fp 11 53) #x3cb0000000000000))))
(assert (let ((a!1 (CF_atan2 (fp.mul roundNearestTiesToEven
                             ((_ to_fp 11 53) a_ack!1273)
                             (CF_sin b_ack!1272))
                     (fp.mul roundNearestTiesToEven
                             ((_ to_fp 11 53) a_ack!1273)
                             (CF_cos b_ack!1272)))))
  (FPCHECK_FADD_ACCURACY
    #x3ffa51a6625307d3
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven a!1 a!1)
            ((_ to_fp 11 53) #x4010000000000000)))))

(check-sat)
(exit)
