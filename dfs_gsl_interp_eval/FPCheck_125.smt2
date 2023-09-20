(declare-fun x1_ack!1396 () (_ BitVec 64))
(declare-fun x0_ack!1402 () (_ BitVec 64))
(declare-fun x2_ack!1397 () (_ BitVec 64))
(declare-fun xx_ack!1401 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!1398 () (_ BitVec 64))
(declare-fun y1_ack!1399 () (_ BitVec 64))
(declare-fun y2_ack!1400 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1402) ((_ to_fp 11 53) x1_ack!1396)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1396) ((_ to_fp 11 53) x2_ack!1397)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1396)
                       ((_ to_fp 11 53) x0_ack!1402))
               ((_ to_fp 11 53) x0_ack!1402))
       ((_ to_fp 11 53) x1_ack!1396)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1396)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1396)
                       ((_ to_fp 11 53) x0_ack!1402)))
       ((_ to_fp 11 53) x0_ack!1402)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1397)
                       ((_ to_fp 11 53) x1_ack!1396))
               ((_ to_fp 11 53) x1_ack!1396))
       ((_ to_fp 11 53) x2_ack!1397)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1397)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1397)
                       ((_ to_fp 11 53) x1_ack!1396)))
       ((_ to_fp 11 53) x1_ack!1396)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1396)
                    ((_ to_fp 11 53) x0_ack!1402))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1397)
                    ((_ to_fp 11 53) x1_ack!1396))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1401) ((_ to_fp 11 53) x0_ack!1402))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1401) ((_ to_fp 11 53) x2_ack!1397))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1401) ((_ to_fp 11 53) x0_ack!1402))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!1401) ((_ to_fp 11 53) x1_ack!1396))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1396)
               ((_ to_fp 11 53) x0_ack!1402))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1400)
                           ((_ to_fp 11 53) y1_ack!1399))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1397)
                                   ((_ to_fp 11 53) x1_ack!1396)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1399)
                           ((_ to_fp 11 53) y0_ack!1398))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1396)
                                   ((_ to_fp 11 53) x0_ack!1402)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1397)
                                   ((_ to_fp 11 53) x1_ack!1396))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1396)
                                   ((_ to_fp 11 53) x0_ack!1402))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1396)
                                   ((_ to_fp 11 53) x0_ack!1402))
                           a!4)
                   ((_ to_fp 11 53) #x4008000000000000))))
  (FPCHECK_FSUB_UNDERFLOW
    (fp.div roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) y1_ack!1399)
                    ((_ to_fp 11 53) y0_ack!1398))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1396)
                    ((_ to_fp 11 53) x0_ack!1402)))
    a!5)))))

(check-sat)
(exit)
