(declare-fun x1_ack!715 () (_ BitVec 64))
(declare-fun x0_ack!721 () (_ BitVec 64))
(declare-fun x2_ack!716 () (_ BitVec 64))
(declare-fun xx_ack!720 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!717 () (_ BitVec 64))
(declare-fun y1_ack!718 () (_ BitVec 64))
(declare-fun y2_ack!719 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!721) ((_ to_fp 11 53) x1_ack!715)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!715) ((_ to_fp 11 53) x2_ack!716)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!715)
                       ((_ to_fp 11 53) x0_ack!721))
               ((_ to_fp 11 53) x0_ack!721))
       ((_ to_fp 11 53) x1_ack!715)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!715)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!715)
                       ((_ to_fp 11 53) x0_ack!721)))
       ((_ to_fp 11 53) x0_ack!721)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!716)
                       ((_ to_fp 11 53) x1_ack!715))
               ((_ to_fp 11 53) x1_ack!715))
       ((_ to_fp 11 53) x2_ack!716)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!716)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!716)
                       ((_ to_fp 11 53) x1_ack!715)))
       ((_ to_fp 11 53) x1_ack!715)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!715)
                    ((_ to_fp 11 53) x0_ack!721))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!716)
                    ((_ to_fp 11 53) x1_ack!715))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!720) ((_ to_fp 11 53) x0_ack!721))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!720) ((_ to_fp 11 53) x2_ack!716))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!720) ((_ to_fp 11 53) x0_ack!721))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!720) ((_ to_fp 11 53) x1_ack!715)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!715) ((_ to_fp 11 53) xx_ack!720))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!716)
               ((_ to_fp 11 53) x1_ack!715))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!719)
                           ((_ to_fp 11 53) y1_ack!718))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!716)
                                   ((_ to_fp 11 53) x1_ack!715)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!718)
                           ((_ to_fp 11 53) y0_ack!717))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!715)
                                   ((_ to_fp 11 53) x0_ack!721)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!716)
                                   ((_ to_fp 11 53) x1_ack!715))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!715)
                                   ((_ to_fp 11 53) x0_ack!721))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!716)
                                   ((_ to_fp 11 53) x1_ack!715))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!4))
                   ((_ to_fp 11 53) #x4008000000000000))))
  (FPCHECK_FSUB_UNDERFLOW
    (fp.div roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) y2_ack!719)
                    ((_ to_fp 11 53) y1_ack!718))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!716)
                    ((_ to_fp 11 53) x1_ack!715)))
    a!5)))))

(check-sat)
(exit)
