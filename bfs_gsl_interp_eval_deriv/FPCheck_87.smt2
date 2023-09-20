(declare-fun x1_ack!887 () (_ BitVec 64))
(declare-fun x0_ack!893 () (_ BitVec 64))
(declare-fun x2_ack!888 () (_ BitVec 64))
(declare-fun xx_ack!892 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!889 () (_ BitVec 64))
(declare-fun y1_ack!890 () (_ BitVec 64))
(declare-fun y2_ack!891 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!893) ((_ to_fp 11 53) x1_ack!887)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!887) ((_ to_fp 11 53) x2_ack!888)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!887)
                       ((_ to_fp 11 53) x0_ack!893))
               ((_ to_fp 11 53) x0_ack!893))
       ((_ to_fp 11 53) x1_ack!887)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!887)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!887)
                       ((_ to_fp 11 53) x0_ack!893)))
       ((_ to_fp 11 53) x0_ack!893)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!888)
                       ((_ to_fp 11 53) x1_ack!887))
               ((_ to_fp 11 53) x1_ack!887))
       ((_ to_fp 11 53) x2_ack!888)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!888)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!888)
                       ((_ to_fp 11 53) x1_ack!887)))
       ((_ to_fp 11 53) x1_ack!887)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!887)
                    ((_ to_fp 11 53) x0_ack!893))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!888)
                    ((_ to_fp 11 53) x1_ack!887))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!892) ((_ to_fp 11 53) x0_ack!893))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!892) ((_ to_fp 11 53) x2_ack!888))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!892) ((_ to_fp 11 53) x0_ack!893))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!892) ((_ to_fp 11 53) x1_ack!887))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!887)
               ((_ to_fp 11 53) x0_ack!893))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!891)
                           ((_ to_fp 11 53) y1_ack!890))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!888)
                                   ((_ to_fp 11 53) x1_ack!887)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!890)
                           ((_ to_fp 11 53) y0_ack!889))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!887)
                                   ((_ to_fp 11 53) x0_ack!893)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!888)
                                   ((_ to_fp 11 53) x1_ack!887))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!887)
                                   ((_ to_fp 11 53) x0_ack!893))))))
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
                                   ((_ to_fp 11 53) x1_ack!887)
                                   ((_ to_fp 11 53) x0_ack!893))))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x4008000000000000) a!5)
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) xx_ack!892)
            ((_ to_fp 11 53) x0_ack!893)))))))

(check-sat)
(exit)
