(declare-fun x1_ack!965 () (_ BitVec 64))
(declare-fun x0_ack!971 () (_ BitVec 64))
(declare-fun x2_ack!966 () (_ BitVec 64))
(declare-fun xx_ack!970 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!967 () (_ BitVec 64))
(declare-fun y1_ack!968 () (_ BitVec 64))
(declare-fun y2_ack!969 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!971) ((_ to_fp 11 53) x1_ack!965)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!965) ((_ to_fp 11 53) x2_ack!966)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!965)
                       ((_ to_fp 11 53) x0_ack!971))
               ((_ to_fp 11 53) x0_ack!971))
       ((_ to_fp 11 53) x1_ack!965)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!965)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!965)
                       ((_ to_fp 11 53) x0_ack!971)))
       ((_ to_fp 11 53) x0_ack!971)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!966)
                       ((_ to_fp 11 53) x1_ack!965))
               ((_ to_fp 11 53) x1_ack!965))
       ((_ to_fp 11 53) x2_ack!966)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!966)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!966)
                       ((_ to_fp 11 53) x1_ack!965)))
       ((_ to_fp 11 53) x1_ack!965)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!965)
                    ((_ to_fp 11 53) x0_ack!971))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!966)
                    ((_ to_fp 11 53) x1_ack!965))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!970) ((_ to_fp 11 53) x0_ack!971))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!970) ((_ to_fp 11 53) x2_ack!966))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!970) ((_ to_fp 11 53) x0_ack!971))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!970) ((_ to_fp 11 53) x1_ack!965)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!965) ((_ to_fp 11 53) xx_ack!970))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!966)
               ((_ to_fp 11 53) x1_ack!965))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!969)
                           ((_ to_fp 11 53) y1_ack!968))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!966)
                                   ((_ to_fp 11 53) x1_ack!965)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!968)
                           ((_ to_fp 11 53) y0_ack!967))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!965)
                                   ((_ to_fp 11 53) x0_ack!971)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!966)
                                   ((_ to_fp 11 53) x1_ack!965))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!965)
                                   ((_ to_fp 11 53) x0_ack!971))))))
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
                                   ((_ to_fp 11 53) x2_ack!966)
                                   ((_ to_fp 11 53) x1_ack!965))))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x4008000000000000) a!5)
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) xx_ack!970)
            ((_ to_fp 11 53) x1_ack!965)))))))

(check-sat)
(exit)
