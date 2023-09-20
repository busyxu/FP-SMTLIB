(declare-fun x1_ack!669 () (_ BitVec 64))
(declare-fun x0_ack!675 () (_ BitVec 64))
(declare-fun x2_ack!670 () (_ BitVec 64))
(declare-fun xx_ack!674 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!671 () (_ BitVec 64))
(declare-fun y1_ack!672 () (_ BitVec 64))
(declare-fun y2_ack!673 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!675) ((_ to_fp 11 53) x1_ack!669)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!669) ((_ to_fp 11 53) x2_ack!670)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!669)
                       ((_ to_fp 11 53) x0_ack!675))
               ((_ to_fp 11 53) x0_ack!675))
       ((_ to_fp 11 53) x1_ack!669)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!669)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!669)
                       ((_ to_fp 11 53) x0_ack!675)))
       ((_ to_fp 11 53) x0_ack!675)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!670)
                       ((_ to_fp 11 53) x1_ack!669))
               ((_ to_fp 11 53) x1_ack!669))
       ((_ to_fp 11 53) x2_ack!670)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!670)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!670)
                       ((_ to_fp 11 53) x1_ack!669)))
       ((_ to_fp 11 53) x1_ack!669)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!669)
                    ((_ to_fp 11 53) x0_ack!675))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!670)
                    ((_ to_fp 11 53) x1_ack!669))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!674) ((_ to_fp 11 53) x0_ack!675))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!674) ((_ to_fp 11 53) x2_ack!670))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!674) ((_ to_fp 11 53) x0_ack!675))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!674) ((_ to_fp 11 53) x1_ack!669))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!669)
               ((_ to_fp 11 53) x0_ack!675))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!673)
                           ((_ to_fp 11 53) y1_ack!672))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!670)
                                   ((_ to_fp 11 53) x1_ack!669)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!672)
                           ((_ to_fp 11 53) y0_ack!671))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!669)
                                   ((_ to_fp 11 53) x0_ack!675)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!670)
                                   ((_ to_fp 11 53) x1_ack!669))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!669)
                                   ((_ to_fp 11 53) x0_ack!675))))))
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
                                   ((_ to_fp 11 53) x1_ack!669)
                                   ((_ to_fp 11 53) x0_ack!675))
                           a!4)
                   ((_ to_fp 11 53) #x4008000000000000))))
  (FPCHECK_FSUB_UNDERFLOW
    (fp.div roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) y1_ack!672)
                    ((_ to_fp 11 53) y0_ack!671))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!669)
                    ((_ to_fp 11 53) x0_ack!675)))
    a!5)))))

(check-sat)
(exit)
