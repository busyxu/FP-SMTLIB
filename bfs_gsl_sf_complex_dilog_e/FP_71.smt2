(declare-fun CF_sin ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun b_ack!1388 () (_ BitVec 64))
(declare-fun a_ack!1389 () (_ BitVec 64))
(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1389)
                    (CF_sin b_ack!1388))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1389)
                                   (CF_cos b_ack!1388))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1389)
                                   (CF_cos b_ack!1388)))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1389)
                                   (CF_sin b_ack!1388))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1389)
                                   (CF_sin b_ack!1388))))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3ff0000000000000))
                 ((_ to_fp 11 53) #x3ff0000000000000))
         a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1389)
                                   (CF_cos b_ack!1388))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1389)
                                   (CF_cos b_ack!1388)))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1389)
                                   (CF_sin b_ack!1388))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1389)
                                   (CF_sin b_ack!1388))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3ff0000000000000)))
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1389)
                                   (CF_cos b_ack!1388))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1389)
                                   (CF_cos b_ack!1388)))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1389)
                                   (CF_sin b_ack!1388))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1389)
                                   (CF_sin b_ack!1388))))))
(let ((a!2 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  a!1
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3cb0000000000000))))
  (not a!2))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1389)
                                   (CF_cos b_ack!1388))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1389)
                                   (CF_cos b_ack!1388)))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1389)
                                   (CF_sin b_ack!1388))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1389)
                                   (CF_sin b_ack!1388))))))
  (fp.lt a!1 ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.gt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!1389)
               (CF_cos b_ack!1388))
       ((_ to_fp 11 53) #x3fe76c8b43958106)))

(check-sat)
(exit)
