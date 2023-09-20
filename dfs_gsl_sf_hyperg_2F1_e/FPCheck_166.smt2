(declare-fun a_ack!1113 () (_ BitVec 64))
(declare-fun b_ack!1110 () (_ BitVec 64))
(declare-fun c_ack!1111 () (_ BitVec 64))
(declare-fun d_ack!1112 () (_ BitVec 64))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1113) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1110) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!1111) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) d_ack!1112)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3d4f400000000000))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!1112) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) #x3ff0000000000000) ((_ to_fp 11 53) d_ack!1112))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!1111)
                   (CF_floor (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) c_ack!1111)
                                     ((_ to_fp 11 53) #x3fe0000000000000))))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3d4f400000000000)))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!1111)
                       ((_ to_fp 11 53) b_ack!1110))
               ((_ to_fp 11 53) b_ack!1110))
       ((_ to_fp 11 53) c_ack!1111)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) c_ack!1111)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!1111)
                       ((_ to_fp 11 53) b_ack!1110)))
       ((_ to_fp 11 53) b_ack!1110)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!1111)
                                  ((_ to_fp 11 53) b_ack!1110)))
                  ((_ to_fp 11 53) #x3d4f400000000000))))
  (not a!1)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!1111)
                       ((_ to_fp 11 53) a_ack!1113))
               ((_ to_fp 11 53) a_ack!1113))
       ((_ to_fp 11 53) c_ack!1111)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) c_ack!1111)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!1111)
                       ((_ to_fp 11 53) a_ack!1113)))
       ((_ to_fp 11 53) a_ack!1113)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!1111)
                                  ((_ to_fp 11 53) a_ack!1113)))
                  ((_ to_fp 11 53) #x3d4f400000000000))))
  (not a!1)))
(assert (fp.geq ((_ to_fp 11 53) a_ack!1113) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1110) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.geq ((_ to_fp 11 53) c_ack!1111) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!1113))
       ((_ to_fp 11 53) #x4024000000000000)))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!1110))
       ((_ to_fp 11 53) #x4024000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!1112) ((_ to_fp 11 53) #xbfd0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!1112) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!1111))
            ((_ to_fp 11 53) #x4024000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!1111)
                           ((_ to_fp 11 53) a_ack!1113))
                   ((_ to_fp 11 53) b_ack!1110))))
(let ((a!2 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.add roundNearestTiesToEven
                               a!1
                               ((_ to_fp 11 53) #x3fe0000000000000))))))
(let ((a!3 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  a!1
                                  ((_ to_fp 11 53) roundNearestTiesToEven a!2)))
                  ((_ to_fp 11 53) #x3d4f400000000000))))
  (not a!3)))))
(assert (FPCHECK_FSUB_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) c_ack!1111)
          ((_ to_fp 11 53) a_ack!1113))
  #x3ff0000000000000))

(check-sat)
(exit)
