(declare-fun x1_ack!1284 () (_ BitVec 64))
(declare-fun x0_ack!1290 () (_ BitVec 64))
(declare-fun x2_ack!1285 () (_ BitVec 64))
(declare-fun xx_ack!1289 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun y0_ack!1286 () (_ BitVec 64))
(declare-fun y1_ack!1287 () (_ BitVec 64))
(declare-fun y2_ack!1288 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1290) ((_ to_fp 11 53) x1_ack!1284)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1284) ((_ to_fp 11 53) x2_ack!1285)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1284)
                       ((_ to_fp 11 53) x0_ack!1290))
               ((_ to_fp 11 53) x0_ack!1290))
       ((_ to_fp 11 53) x1_ack!1284)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1284)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1284)
                       ((_ to_fp 11 53) x0_ack!1290)))
       ((_ to_fp 11 53) x0_ack!1290)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1285)
                       ((_ to_fp 11 53) x1_ack!1284))
               ((_ to_fp 11 53) x1_ack!1284))
       ((_ to_fp 11 53) x2_ack!1285)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1285)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1285)
                       ((_ to_fp 11 53) x1_ack!1284)))
       ((_ to_fp 11 53) x1_ack!1284)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1284)
                    ((_ to_fp 11 53) x0_ack!1290))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1285)
                    ((_ to_fp 11 53) x1_ack!1284))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1289) ((_ to_fp 11 53) x0_ack!1290))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1289) ((_ to_fp 11 53) x2_ack!1285))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1289) ((_ to_fp 11 53) x0_ack!1290))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1289) ((_ to_fp 11 53) x1_ack!1284)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1284) ((_ to_fp 11 53) xx_ack!1289))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1285)
               ((_ to_fp 11 53) x1_ack!1284))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1288)
                           ((_ to_fp 11 53) y1_ack!1287))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1285)
                                   ((_ to_fp 11 53) x1_ack!1284)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1287)
                           ((_ to_fp 11 53) y0_ack!1286))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1284)
                                   ((_ to_fp 11 53) x0_ack!1290)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1285)
                                   ((_ to_fp 11 53) x1_ack!1284))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1284)
                                   ((_ to_fp 11 53) x0_ack!1290))))))
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
                    ((_ to_fp 11 53) x2_ack!1285)
                    ((_ to_fp 11 53) x1_ack!1284))
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x0000000000000000)
                    a!4))
    #x4008000000000000))))

(check-sat)
(exit)
