(declare-fun CF_sin ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun b_ack!1088 () (_ BitVec 64))
(declare-fun a_ack!1089 () (_ BitVec 64))
(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (fp.eq (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!1089)
               (CF_sin b_ack!1088))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.geq (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!1089)
                     (CF_cos b_ack!1088))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.geq (fp.mul roundNearestTiesToEven
                ((_ to_fp 11 53) a_ack!1089)
                (CF_cos b_ack!1088))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1089)
                    (CF_cos b_ack!1088))
            ((_ to_fp 11 53) #x4000000000000000))))
(assert (not (fp.gt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1089)
                    (CF_cos b_ack!1088))
            ((_ to_fp 11 53) #x3ff028f5c28f5c29))))
(assert (not (fp.gt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1089)
                    (CF_cos b_ack!1088))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1089)
                    (CF_cos b_ack!1088))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1089)
                    (CF_cos b_ack!1088))
            ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.gt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1089)
                    (CF_cos b_ack!1088))
            ((_ to_fp 11 53) #x3fd0000000000000))))
(assert (fp.gt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!1089)
               (CF_cos b_ack!1088))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1089)
                                   (CF_cos b_ack!1088))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1089)
                                   (CF_cos b_ack!1088)))
                   ((_ to_fp 11 53) #x3fd0000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1089)
                                   (CF_cos b_ack!1088))
                           a!1))))
  (not (fp.lt (fp.abs a!2) ((_ to_fp 11 53) #x3cb0000000000000))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1089)
                                   (CF_cos b_ack!1088))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1089)
                                   (CF_cos b_ack!1088)))
                   ((_ to_fp 11 53) #x3fd0000000000000))))
  (FPCHECK_FMUL_ACCURACY
    (fp.mul roundNearestTiesToEven
            a!1
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1089)
                    (CF_cos b_ack!1088)))
    #x3fdc71c71c71c71c)))

(check-sat)
(exit)
