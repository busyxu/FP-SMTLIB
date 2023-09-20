(declare-fun x1_ack!7756 () (_ BitVec 64))
(declare-fun x0_ack!7763 () (_ BitVec 64))
(declare-fun x2_ack!7757 () (_ BitVec 64))
(declare-fun b_ack!7762 () (_ BitVec 64))
(declare-fun a_ack!7761 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!7758 () (_ BitVec 64))
(declare-fun y1_ack!7759 () (_ BitVec 64))
(declare-fun y2_ack!7760 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7763) ((_ to_fp 11 53) x1_ack!7756)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7756) ((_ to_fp 11 53) x2_ack!7757)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7756)
                       ((_ to_fp 11 53) x0_ack!7763))
               ((_ to_fp 11 53) x0_ack!7763))
       ((_ to_fp 11 53) x1_ack!7756)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7756)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7756)
                       ((_ to_fp 11 53) x0_ack!7763)))
       ((_ to_fp 11 53) x0_ack!7763)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7757)
                       ((_ to_fp 11 53) x1_ack!7756))
               ((_ to_fp 11 53) x1_ack!7756))
       ((_ to_fp 11 53) x2_ack!7757)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7757)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7757)
                       ((_ to_fp 11 53) x1_ack!7756)))
       ((_ to_fp 11 53) x1_ack!7756)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7756)
                    ((_ to_fp 11 53) x0_ack!7763))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7757)
                    ((_ to_fp 11 53) x1_ack!7756))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7761) ((_ to_fp 11 53) b_ack!7762))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7761) ((_ to_fp 11 53) x0_ack!7763))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7762) ((_ to_fp 11 53) x2_ack!7757))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7761) ((_ to_fp 11 53) b_ack!7762))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7761) ((_ to_fp 11 53) x0_ack!7763))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7761) ((_ to_fp 11 53) x1_ack!7756))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7762) ((_ to_fp 11 53) x0_ack!7763))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!7762) ((_ to_fp 11 53) x1_ack!7756)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7756) ((_ to_fp 11 53) b_ack!7762))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7756)
                    ((_ to_fp 11 53) x0_ack!7763))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7757)
                    ((_ to_fp 11 53) x1_ack!7756))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!7760)
                           ((_ to_fp 11 53) y1_ack!7759))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7757)
                                   ((_ to_fp 11 53) x1_ack!7756)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!7759)
                           ((_ to_fp 11 53) y0_ack!7758))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7756)
                                   ((_ to_fp 11 53) x0_ack!7763)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7757)
                                   ((_ to_fp 11 53) x1_ack!7756))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7756)
                                   ((_ to_fp 11 53) x0_ack!7763)))))
      (a!8 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7756)
                                   ((_ to_fp 11 53) x1_ack!7756))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7756)
                                   ((_ to_fp 11 53) x1_ack!7756)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!7762)
                                   ((_ to_fp 11 53) x1_ack!7756))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!7762)
                                   ((_ to_fp 11 53) x1_ack!7756))))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven a!1 a!2))
                   a!3))
      (a!9 (fp.add roundNearestTiesToEven
                   a!8
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7756)
                                   ((_ to_fp 11 53) x1_ack!7756))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!7762)
                                   ((_ to_fp 11 53) x1_ack!7756))))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x2_ack!7757)
                           ((_ to_fp 11 53) x1_ack!7756))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!4)))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y2_ack!7760)
                                   ((_ to_fp 11 53) y1_ack!7759))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7757)
                                   ((_ to_fp 11 53) x1_ack!7756)))
                   (fp.div roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) #x4008000000000000)))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           a!6)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7756)
                                   ((_ to_fp 11 53) x1_ack!7756))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!7762)
                                   ((_ to_fp 11 53) x1_ack!7756))))))
  (FPCHECK_FADD_ACCURACY
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) y1_ack!7759) a!7)
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fd5555555555555)
                    a!4)
            a!9))))))))

(check-sat)
(exit)
