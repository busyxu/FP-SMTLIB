(declare-fun CF_sin ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun b_ack!1278 () (_ BitVec 64))
(declare-fun a_ack!1279 () (_ BitVec 64))
(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_atan2
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             (_ FloatingPoint 11 53))
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1279)
                    (CF_sin b_ack!1278))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1279)
                                   (CF_cos b_ack!1278))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1279)
                                   (CF_cos b_ack!1278)))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1279)
                                   (CF_sin b_ack!1278))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1279)
                                   (CF_sin b_ack!1278))))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3ff0000000000000))
                 ((_ to_fp 11 53) #x3ff0000000000000))
         a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1279)
                                   (CF_cos b_ack!1278))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1279)
                                   (CF_cos b_ack!1278)))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1279)
                                   (CF_sin b_ack!1278))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1279)
                                   (CF_sin b_ack!1278))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3ff0000000000000)))
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1279)
                                   (CF_cos b_ack!1278))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1279)
                                   (CF_cos b_ack!1278)))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1279)
                                   (CF_sin b_ack!1278))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1279)
                                   (CF_sin b_ack!1278))))))
  (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3ff0000000000000)))
         ((_ to_fp 11 53) #x3cb0000000000000))))
(assert (let ((a!1 (CF_atan2 (fp.mul roundNearestTiesToEven
                             ((_ to_fp 11 53) a_ack!1279)
                             (CF_sin b_ack!1278))
                     (fp.mul roundNearestTiesToEven
                             ((_ to_fp 11 53) a_ack!1279)
                             (CF_cos b_ack!1278)))))
  (FPCHECK_FADD_ACCURACY
    (fp.add roundNearestTiesToEven
            ((_ to_fp 11 53) #x3ffa51a6625307d3)
            (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven a!1 a!1)
                    ((_ to_fp 11 53) #x4010000000000000)))
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x400921fb54442d18)
                    (fp.abs a!1))
            ((_ to_fp 11 53) #x4000000000000000)))))

(check-sat)
(exit)
