(declare-fun x1_ack!1323 () (_ BitVec 64))
(declare-fun x0_ack!1329 () (_ BitVec 64))
(declare-fun x2_ack!1324 () (_ BitVec 64))
(declare-fun xx_ack!1328 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun y0_ack!1325 () (_ BitVec 64))
(declare-fun y1_ack!1326 () (_ BitVec 64))
(declare-fun y2_ack!1327 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1329) ((_ to_fp 11 53) x1_ack!1323)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1323) ((_ to_fp 11 53) x2_ack!1324)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1323)
                       ((_ to_fp 11 53) x0_ack!1329))
               ((_ to_fp 11 53) x0_ack!1329))
       ((_ to_fp 11 53) x1_ack!1323)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1323)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1323)
                       ((_ to_fp 11 53) x0_ack!1329)))
       ((_ to_fp 11 53) x0_ack!1329)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1324)
                       ((_ to_fp 11 53) x1_ack!1323))
               ((_ to_fp 11 53) x1_ack!1323))
       ((_ to_fp 11 53) x2_ack!1324)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1324)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1324)
                       ((_ to_fp 11 53) x1_ack!1323)))
       ((_ to_fp 11 53) x1_ack!1323)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1323)
                    ((_ to_fp 11 53) x0_ack!1329))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1324)
                    ((_ to_fp 11 53) x1_ack!1323))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1328) ((_ to_fp 11 53) x0_ack!1329))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1328) ((_ to_fp 11 53) x2_ack!1324))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1328) ((_ to_fp 11 53) x0_ack!1329))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1328) ((_ to_fp 11 53) x1_ack!1323)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1323) ((_ to_fp 11 53) xx_ack!1328))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1324)
               ((_ to_fp 11 53) x1_ack!1323))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1327)
                           ((_ to_fp 11 53) y1_ack!1326))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1324)
                                   ((_ to_fp 11 53) x1_ack!1323)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1326)
                           ((_ to_fp 11 53) y0_ack!1325))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1323)
                                   ((_ to_fp 11 53) x0_ack!1329)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1324)
                                   ((_ to_fp 11 53) x1_ack!1323))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1323)
                                   ((_ to_fp 11 53) x0_ack!1329))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
  (FPCHECK_FDIV_OVERFLOW
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1324)
                    ((_ to_fp 11 53) x1_ack!1323))
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x0000000000000000)
                    a!4))
    #x4008000000000000))))

(check-sat)
(exit)
