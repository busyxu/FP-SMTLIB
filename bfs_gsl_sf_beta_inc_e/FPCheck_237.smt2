(declare-fun c_ack!1038 () (_ BitVec 64))
(declare-fun a_ack!1039 () (_ BitVec 64))
(declare-fun CF_floor ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun b_ack!1037 () (_ BitVec 64))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1038) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1038) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!1039) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (ite (fp.eq ((_ to_fp 11 53) a_ack!1039) (CF_floor a_ack!1039))
                  #x00000001
                  #x00000000))))
  (not (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1037) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!1039)
               ((_ to_fp 11 53) b_ack!1037))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.eq (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53) a_ack!1039)
                          ((_ to_fp 11 53) b_ack!1037))
                  (CF_floor (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!1039)
                                    ((_ to_fp 11 53) b_ack!1037))))))
(let ((a!2 (not (fp.eq ((_ to_fp 11 53)
                         roundNearestTiesToEven
                         (ite a!1 #x00000001 #x00000000))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!2))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1038) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1038) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!1039) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt ((_ to_fp 11 53) a_ack!1039) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) b_ack!1037))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1039)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!1038)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3d4f400000000000))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1038) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) #x3ff0000000000000) ((_ to_fp 11 53) c_ack!1038))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1039)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!1037))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3d4f400000000000)))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1039)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) a_ack!1039)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3d4f400000000000)))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1039) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!1039))
       ((_ to_fp 11 53) #x4024000000000000)))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) b_ack!1037)))
       ((_ to_fp 11 53) #x4024000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!1039)
                   (CF_floor (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!1039)
                                     ((_ to_fp 11 53) #x3fe0000000000000))))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3d4f400000000000)))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1038) ((_ to_fp 11 53) #xbfd0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1038) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (let ((a!1 (fp.gt (fp.abs (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!1039)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x4024000000000000))))
  (not a!1)))
(assert (FPCHECK_FSUB_UNDERFLOW
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!1039)
          ((_ to_fp 11 53) #x3ff0000000000000))
  a_ack!1039))

(check-sat)
(exit)
