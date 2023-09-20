(declare-fun x1_ack!915 () (_ BitVec 64))
(declare-fun x0_ack!921 () (_ BitVec 64))
(declare-fun x2_ack!916 () (_ BitVec 64))
(declare-fun xx_ack!920 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!917 () (_ BitVec 64))
(declare-fun y1_ack!918 () (_ BitVec 64))
(declare-fun y2_ack!919 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!921) ((_ to_fp 11 53) x1_ack!915)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!915) ((_ to_fp 11 53) x2_ack!916)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!915)
                       ((_ to_fp 11 53) x0_ack!921))
               ((_ to_fp 11 53) x0_ack!921))
       ((_ to_fp 11 53) x1_ack!915)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!915)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!915)
                       ((_ to_fp 11 53) x0_ack!921)))
       ((_ to_fp 11 53) x0_ack!921)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!916)
                       ((_ to_fp 11 53) x1_ack!915))
               ((_ to_fp 11 53) x1_ack!915))
       ((_ to_fp 11 53) x2_ack!916)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!916)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!916)
                       ((_ to_fp 11 53) x1_ack!915)))
       ((_ to_fp 11 53) x1_ack!915)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!915)
                    ((_ to_fp 11 53) x0_ack!921))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!916)
                    ((_ to_fp 11 53) x1_ack!915))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!920) ((_ to_fp 11 53) x0_ack!921))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!920) ((_ to_fp 11 53) x2_ack!916))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!920) ((_ to_fp 11 53) x0_ack!921))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!920) ((_ to_fp 11 53) x1_ack!915))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!915)
               ((_ to_fp 11 53) x0_ack!921))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!919)
                           ((_ to_fp 11 53) y1_ack!918))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!916)
                                   ((_ to_fp 11 53) x1_ack!915)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!918)
                           ((_ to_fp 11 53) y0_ack!917))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!915)
                                   ((_ to_fp 11 53) x0_ack!921)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!916)
                                   ((_ to_fp 11 53) x1_ack!915))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!915)
                                   ((_ to_fp 11 53) x0_ack!921))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!915)
                                   ((_ to_fp 11 53) x0_ack!921))))))
  (FPCHECK_FADD_OVERFLOW
    #x0000000000000000
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    a!5)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) xx_ack!920)
                    ((_ to_fp 11 53) x0_ack!921))))))))

(check-sat)
(exit)
