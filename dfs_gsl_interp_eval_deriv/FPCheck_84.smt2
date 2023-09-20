(declare-fun x1_ack!845 () (_ BitVec 64))
(declare-fun x0_ack!851 () (_ BitVec 64))
(declare-fun x2_ack!846 () (_ BitVec 64))
(declare-fun xx_ack!850 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!847 () (_ BitVec 64))
(declare-fun y1_ack!848 () (_ BitVec 64))
(declare-fun y2_ack!849 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!851) ((_ to_fp 11 53) x1_ack!845)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!845) ((_ to_fp 11 53) x2_ack!846)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!845)
                       ((_ to_fp 11 53) x0_ack!851))
               ((_ to_fp 11 53) x0_ack!851))
       ((_ to_fp 11 53) x1_ack!845)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!845)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!845)
                       ((_ to_fp 11 53) x0_ack!851)))
       ((_ to_fp 11 53) x0_ack!851)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!846)
                       ((_ to_fp 11 53) x1_ack!845))
               ((_ to_fp 11 53) x1_ack!845))
       ((_ to_fp 11 53) x2_ack!846)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!846)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!846)
                       ((_ to_fp 11 53) x1_ack!845)))
       ((_ to_fp 11 53) x1_ack!845)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!845)
                    ((_ to_fp 11 53) x0_ack!851))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!846)
                    ((_ to_fp 11 53) x1_ack!845))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!850) ((_ to_fp 11 53) x0_ack!851))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!850) ((_ to_fp 11 53) x2_ack!846))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!850) ((_ to_fp 11 53) x0_ack!851))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!850) ((_ to_fp 11 53) x1_ack!845)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!845) ((_ to_fp 11 53) xx_ack!850))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!846)
               ((_ to_fp 11 53) x1_ack!845))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!849)
                           ((_ to_fp 11 53) y1_ack!848))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!846)
                                   ((_ to_fp 11 53) x1_ack!845)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!848)
                           ((_ to_fp 11 53) y0_ack!847))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!845)
                                   ((_ to_fp 11 53) x0_ack!851)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!846)
                                   ((_ to_fp 11 53) x1_ack!845))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!845)
                                   ((_ to_fp 11 53) x0_ack!851))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
  (FPCHECK_FDIV_INVALID
    a!4
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4008000000000000)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!846)
                    ((_ to_fp 11 53) x1_ack!845)))))))

(check-sat)
(exit)
