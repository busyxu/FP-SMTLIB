(declare-fun x1_ack!1401 () (_ BitVec 64))
(declare-fun x0_ack!1407 () (_ BitVec 64))
(declare-fun x2_ack!1402 () (_ BitVec 64))
(declare-fun xx_ack!1406 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!1403 () (_ BitVec 64))
(declare-fun y1_ack!1404 () (_ BitVec 64))
(declare-fun y2_ack!1405 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1407) ((_ to_fp 11 53) x1_ack!1401)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1401) ((_ to_fp 11 53) x2_ack!1402)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1401)
                       ((_ to_fp 11 53) x0_ack!1407))
               ((_ to_fp 11 53) x0_ack!1407))
       ((_ to_fp 11 53) x1_ack!1401)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1401)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1401)
                       ((_ to_fp 11 53) x0_ack!1407)))
       ((_ to_fp 11 53) x0_ack!1407)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1402)
                       ((_ to_fp 11 53) x1_ack!1401))
               ((_ to_fp 11 53) x1_ack!1401))
       ((_ to_fp 11 53) x2_ack!1402)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1402)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1402)
                       ((_ to_fp 11 53) x1_ack!1401)))
       ((_ to_fp 11 53) x1_ack!1401)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1401)
                    ((_ to_fp 11 53) x0_ack!1407))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1402)
                    ((_ to_fp 11 53) x1_ack!1401))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1406) ((_ to_fp 11 53) x0_ack!1407))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1406) ((_ to_fp 11 53) x2_ack!1402))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1406) ((_ to_fp 11 53) x0_ack!1407))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1406) ((_ to_fp 11 53) x1_ack!1401)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1401) ((_ to_fp 11 53) xx_ack!1406))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1402)
               ((_ to_fp 11 53) x1_ack!1401))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1405)
                           ((_ to_fp 11 53) y1_ack!1404))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1402)
                                   ((_ to_fp 11 53) x1_ack!1401)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1404)
                           ((_ to_fp 11 53) y0_ack!1403))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1401)
                                   ((_ to_fp 11 53) x0_ack!1407)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1402)
                                   ((_ to_fp 11 53) x1_ack!1401))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1401)
                                   ((_ to_fp 11 53) x0_ack!1407))))))
  (FPCHECK_FSUB_OVERFLOW
    #x0000000000000000
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.sub roundNearestTiesToEven a!1 a!2))
            a!3))))

(check-sat)
(exit)
