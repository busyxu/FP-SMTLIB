(declare-fun CF_sin ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun b_ack!1284 () (_ BitVec 64))
(declare-fun a_ack!1285 () (_ BitVec 64))
(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1285)
                    (CF_sin b_ack!1284))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1285)
                                   (CF_cos b_ack!1284))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1285)
                                   (CF_cos b_ack!1284)))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1285)
                                   (CF_sin b_ack!1284))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1285)
                                   (CF_sin b_ack!1284))))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3ff0000000000000))
                 ((_ to_fp 11 53) #x3ff0000000000000))
         a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1285)
                                   (CF_cos b_ack!1284))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1285)
                                   (CF_cos b_ack!1284)))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1285)
                                   (CF_sin b_ack!1284))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1285)
                                   (CF_sin b_ack!1284))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3ff0000000000000)))
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1285)
                                   (CF_cos b_ack!1284))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1285)
                                   (CF_cos b_ack!1284)))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1285)
                                   (CF_sin b_ack!1284))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1285)
                                   (CF_sin b_ack!1284))))))
(let ((a!2 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  a!1
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3cb0000000000000))))
  (not a!2))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1285)
                                   (CF_cos b_ack!1284))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1285)
                                   (CF_cos b_ack!1284)))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1285)
                                   (CF_sin b_ack!1284))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1285)
                                   (CF_sin b_ack!1284))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1285)
                                   (CF_cos b_ack!1284))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1285)
                                   (CF_cos b_ack!1284)))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1285)
                                   (CF_sin b_ack!1284))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1285)
                                   (CF_sin b_ack!1284))))))
  (FPCHECK_FINVALID_SQRT a!1 a!1)))

(check-sat)
(exit)
