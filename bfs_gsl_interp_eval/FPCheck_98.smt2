(declare-fun x1_ack!1031 () (_ BitVec 64))
(declare-fun x0_ack!1037 () (_ BitVec 64))
(declare-fun x2_ack!1032 () (_ BitVec 64))
(declare-fun xx_ack!1036 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!1033 () (_ BitVec 64))
(declare-fun y1_ack!1034 () (_ BitVec 64))
(declare-fun y2_ack!1035 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1037) ((_ to_fp 11 53) x1_ack!1031)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1031) ((_ to_fp 11 53) x2_ack!1032)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1031)
                       ((_ to_fp 11 53) x0_ack!1037))
               ((_ to_fp 11 53) x0_ack!1037))
       ((_ to_fp 11 53) x1_ack!1031)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1031)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1031)
                       ((_ to_fp 11 53) x0_ack!1037)))
       ((_ to_fp 11 53) x0_ack!1037)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1032)
                       ((_ to_fp 11 53) x1_ack!1031))
               ((_ to_fp 11 53) x1_ack!1031))
       ((_ to_fp 11 53) x2_ack!1032)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1032)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1032)
                       ((_ to_fp 11 53) x1_ack!1031)))
       ((_ to_fp 11 53) x1_ack!1031)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1031)
                    ((_ to_fp 11 53) x0_ack!1037))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1032)
                    ((_ to_fp 11 53) x1_ack!1031))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1036) ((_ to_fp 11 53) x0_ack!1037))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1036) ((_ to_fp 11 53) x2_ack!1032))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1036) ((_ to_fp 11 53) x0_ack!1037))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!1036) ((_ to_fp 11 53) x1_ack!1031))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1031)
               ((_ to_fp 11 53) x0_ack!1037))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1035)
                           ((_ to_fp 11 53) y1_ack!1034))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1032)
                                   ((_ to_fp 11 53) x1_ack!1031)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1034)
                           ((_ to_fp 11 53) y0_ack!1033))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1031)
                                   ((_ to_fp 11 53) x0_ack!1037)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1032)
                                   ((_ to_fp 11 53) x1_ack!1031))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1031)
                                   ((_ to_fp 11 53) x0_ack!1037))))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven a!1 a!2))
                   a!3)))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1031)
                                   ((_ to_fp 11 53) x0_ack!1037))
                           (fp.add roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x0000000000000000)))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           a!4
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1031)
                                   ((_ to_fp 11 53) x0_ack!1037))))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!1034)
                                   ((_ to_fp 11 53) y0_ack!1033))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1031)
                                   ((_ to_fp 11 53) x0_ack!1037)))
                   a!5))
      (a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) xx_ack!1036)
                                   ((_ to_fp 11 53) x0_ack!1037))
                           a!7))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   a!6
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) xx_ack!1036)
                                   ((_ to_fp 11 53) x0_ack!1037))
                           a!8))))
  (FPCHECK_FADD_OVERFLOW
    y0_ack!1033
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) xx_ack!1036)
                    ((_ to_fp 11 53) x0_ack!1037))
            a!9))))))))

(check-sat)
(exit)
