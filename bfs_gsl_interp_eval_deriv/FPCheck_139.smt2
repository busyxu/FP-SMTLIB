(declare-fun x1_ack!1559 () (_ BitVec 64))
(declare-fun x0_ack!1565 () (_ BitVec 64))
(declare-fun x2_ack!1560 () (_ BitVec 64))
(declare-fun xx_ack!1564 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!1561 () (_ BitVec 64))
(declare-fun y1_ack!1562 () (_ BitVec 64))
(declare-fun y2_ack!1563 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1565) ((_ to_fp 11 53) x1_ack!1559)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1559) ((_ to_fp 11 53) x2_ack!1560)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1559)
                       ((_ to_fp 11 53) x0_ack!1565))
               ((_ to_fp 11 53) x0_ack!1565))
       ((_ to_fp 11 53) x1_ack!1559)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1559)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1559)
                       ((_ to_fp 11 53) x0_ack!1565)))
       ((_ to_fp 11 53) x0_ack!1565)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1560)
                       ((_ to_fp 11 53) x1_ack!1559))
               ((_ to_fp 11 53) x1_ack!1559))
       ((_ to_fp 11 53) x2_ack!1560)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1560)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1560)
                       ((_ to_fp 11 53) x1_ack!1559)))
       ((_ to_fp 11 53) x1_ack!1559)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1559)
                    ((_ to_fp 11 53) x0_ack!1565))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1560)
                    ((_ to_fp 11 53) x1_ack!1559))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1564) ((_ to_fp 11 53) x0_ack!1565))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1564) ((_ to_fp 11 53) x2_ack!1560))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1564) ((_ to_fp 11 53) x0_ack!1565))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1564) ((_ to_fp 11 53) x1_ack!1559)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1559) ((_ to_fp 11 53) xx_ack!1564))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1560)
               ((_ to_fp 11 53) x1_ack!1559))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1563)
                           ((_ to_fp 11 53) y1_ack!1562))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1560)
                                   ((_ to_fp 11 53) x1_ack!1559)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1562)
                           ((_ to_fp 11 53) y0_ack!1561))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1559)
                                   ((_ to_fp 11 53) x0_ack!1565)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1560)
                                   ((_ to_fp 11 53) x1_ack!1559))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1559)
                                   ((_ to_fp 11 53) x0_ack!1565))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1560)
                                   ((_ to_fp 11 53) x1_ack!1559))))))
  (FPCHECK_FMUL_UNDERFLOW #x4008000000000000 a!5)))))

(check-sat)
(exit)
