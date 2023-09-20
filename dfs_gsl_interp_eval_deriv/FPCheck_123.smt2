(declare-fun x1_ack!1367 () (_ BitVec 64))
(declare-fun x0_ack!1373 () (_ BitVec 64))
(declare-fun x2_ack!1368 () (_ BitVec 64))
(declare-fun xx_ack!1372 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun y0_ack!1369 () (_ BitVec 64))
(declare-fun y1_ack!1370 () (_ BitVec 64))
(declare-fun y2_ack!1371 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1373) ((_ to_fp 11 53) x1_ack!1367)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1367) ((_ to_fp 11 53) x2_ack!1368)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1367)
                       ((_ to_fp 11 53) x0_ack!1373))
               ((_ to_fp 11 53) x0_ack!1373))
       ((_ to_fp 11 53) x1_ack!1367)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1367)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1367)
                       ((_ to_fp 11 53) x0_ack!1373)))
       ((_ to_fp 11 53) x0_ack!1373)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1368)
                       ((_ to_fp 11 53) x1_ack!1367))
               ((_ to_fp 11 53) x1_ack!1367))
       ((_ to_fp 11 53) x2_ack!1368)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1368)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1368)
                       ((_ to_fp 11 53) x1_ack!1367)))
       ((_ to_fp 11 53) x1_ack!1367)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1367)
                    ((_ to_fp 11 53) x0_ack!1373))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1368)
                    ((_ to_fp 11 53) x1_ack!1367))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1372) ((_ to_fp 11 53) x0_ack!1373))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1372) ((_ to_fp 11 53) x2_ack!1368))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1372) ((_ to_fp 11 53) x0_ack!1373))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!1372) ((_ to_fp 11 53) x1_ack!1367))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1367)
               ((_ to_fp 11 53) x0_ack!1373))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1371)
                           ((_ to_fp 11 53) y1_ack!1370))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1368)
                                   ((_ to_fp 11 53) x1_ack!1367)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1370)
                           ((_ to_fp 11 53) y0_ack!1369))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1367)
                                   ((_ to_fp 11 53) x0_ack!1373)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1368)
                                   ((_ to_fp 11 53) x1_ack!1367))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1367)
                                   ((_ to_fp 11 53) x0_ack!1373))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FDIV_ACCURACY
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1367)
                    ((_ to_fp 11 53) x0_ack!1373))
            a!4)
    #x4008000000000000))))

(check-sat)
(exit)
