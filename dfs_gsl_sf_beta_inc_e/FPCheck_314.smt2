(declare-fun c_ack!1486 () (_ BitVec 64))
(declare-fun a_ack!1487 () (_ BitVec 64))
(declare-fun b_ack!1485 () (_ BitVec 64))
(declare-fun CF_floor ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FSUB_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1486) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1486) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1487) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1485) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (ite (fp.eq ((_ to_fp 11 53) b_ack!1485) (CF_floor b_ack!1485))
                  #x00000001
                  #x00000000))))
  (not (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (fp.lt (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!1487)
               ((_ to_fp 11 53) b_ack!1485))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.eq (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53) a_ack!1487)
                          ((_ to_fp 11 53) b_ack!1485))
                  (CF_floor (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!1487)
                                    ((_ to_fp 11 53) b_ack!1485))))))
(let ((a!2 (not (fp.eq ((_ to_fp 11 53)
                         roundNearestTiesToEven
                         (ite a!1 #x00000001 #x00000000))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!2))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1486) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1486) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!1487) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq ((_ to_fp 11 53) b_ack!1485) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) b_ack!1485))
               ((_ to_fp 11 53) b_ack!1485))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) b_ack!1485)))
       ((_ to_fp 11 53) b_ack!1485)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1487)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               ((_ to_fp 11 53) a_ack!1487))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1487)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) a_ack!1487)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1487) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) b_ack!1485))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1487)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!1486)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) c_ack!1486)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) c_ack!1486)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!1486)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!1486)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3d4f400000000000)))
(assert (FPCHECK_FSUB_ACCURACY
  (fp.sub roundNearestTiesToEven
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!1487)
                  ((_ to_fp 11 53) #x3ff0000000000000))
          ((_ to_fp 11 53) a_ack!1487))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) b_ack!1485))))

(check-sat)
(exit)
