(declare-fun CF_sin ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun b_ack!1204 () (_ BitVec 64))
(declare-fun a_ack!1205 () (_ BitVec 64))
(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1205)
                    (CF_sin b_ack!1204))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1205)
                                   (CF_cos b_ack!1204))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1205)
                                   (CF_cos b_ack!1204)))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1205)
                                   (CF_sin b_ack!1204))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1205)
                                   (CF_sin b_ack!1204))))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3ff0000000000000))
                 ((_ to_fp 11 53) #x3ff0000000000000))
         a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1205)
                                   (CF_cos b_ack!1204))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1205)
                                   (CF_cos b_ack!1204)))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1205)
                                   (CF_sin b_ack!1204))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1205)
                                   (CF_sin b_ack!1204))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3ff0000000000000)))
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1205)
                                   (CF_cos b_ack!1204))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1205)
                                   (CF_cos b_ack!1204)))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1205)
                                   (CF_sin b_ack!1204))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1205)
                                   (CF_sin b_ack!1204))))))
(let ((a!2 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  a!1
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3cb0000000000000))))
  (not a!2))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1205)
                                   (CF_cos b_ack!1204))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1205)
                                   (CF_cos b_ack!1204)))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1205)
                                   (CF_sin b_ack!1204))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1205)
                                   (CF_sin b_ack!1204))))))
  (fp.lt a!1 ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1205)
                    (CF_cos b_ack!1204))
            ((_ to_fp 11 53) #x3fe76c8b43958106))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1205)
                           (CF_cos b_ack!1204))
                   ((_ to_fp 11 53) #x000000ffffff8000)))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1205)
                           (CF_sin b_ack!1204))
                   ((_ to_fp 11 53) #x000000ffffff8000))))
  (FPCHECK_FADD_ACCURACY
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    a!1)
            a!1)
    (fp.mul roundNearestTiesToEven a!2 a!2))))

(check-sat)
(exit)
