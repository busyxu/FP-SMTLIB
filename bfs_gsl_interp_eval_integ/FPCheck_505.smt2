(declare-fun x1_ack!6334 () (_ BitVec 64))
(declare-fun x0_ack!6341 () (_ BitVec 64))
(declare-fun x2_ack!6335 () (_ BitVec 64))
(declare-fun b_ack!6340 () (_ BitVec 64))
(declare-fun a_ack!6339 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!6336 () (_ BitVec 64))
(declare-fun y1_ack!6337 () (_ BitVec 64))
(declare-fun y2_ack!6338 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6341) ((_ to_fp 11 53) x1_ack!6334)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6334) ((_ to_fp 11 53) x2_ack!6335)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6334)
                       ((_ to_fp 11 53) x0_ack!6341))
               ((_ to_fp 11 53) x0_ack!6341))
       ((_ to_fp 11 53) x1_ack!6334)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6334)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6334)
                       ((_ to_fp 11 53) x0_ack!6341)))
       ((_ to_fp 11 53) x0_ack!6341)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6335)
                       ((_ to_fp 11 53) x1_ack!6334))
               ((_ to_fp 11 53) x1_ack!6334))
       ((_ to_fp 11 53) x2_ack!6335)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6335)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6335)
                       ((_ to_fp 11 53) x1_ack!6334)))
       ((_ to_fp 11 53) x1_ack!6334)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6334)
                    ((_ to_fp 11 53) x0_ack!6341))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6335)
                    ((_ to_fp 11 53) x1_ack!6334))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6339) ((_ to_fp 11 53) b_ack!6340))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6339) ((_ to_fp 11 53) x0_ack!6341))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6340) ((_ to_fp 11 53) x2_ack!6335))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6339) ((_ to_fp 11 53) b_ack!6340))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6339) ((_ to_fp 11 53) x0_ack!6341))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!6339) ((_ to_fp 11 53) x1_ack!6334))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6340) ((_ to_fp 11 53) x0_ack!6341))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!6340) ((_ to_fp 11 53) x1_ack!6334)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6334) ((_ to_fp 11 53) b_ack!6340))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6334)
                    ((_ to_fp 11 53) x0_ack!6341))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!6338)
                           ((_ to_fp 11 53) y1_ack!6337))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6335)
                                   ((_ to_fp 11 53) x1_ack!6334)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!6337)
                           ((_ to_fp 11 53) y0_ack!6336))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6334)
                                   ((_ to_fp 11 53) x0_ack!6341)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6335)
                                   ((_ to_fp 11 53) x1_ack!6334))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6334)
                                   ((_ to_fp 11 53) x0_ack!6341)))))
      (a!8 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6339)
                                   ((_ to_fp 11 53) x0_ack!6341))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6339)
                                   ((_ to_fp 11 53) x0_ack!6341)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6334)
                                   ((_ to_fp 11 53) x0_ack!6341))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6334)
                                   ((_ to_fp 11 53) x0_ack!6341))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000)))
      (a!9 (fp.add roundNearestTiesToEven
                   a!8
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6339)
                                   ((_ to_fp 11 53) x0_ack!6341))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6334)
                                   ((_ to_fp 11 53) x0_ack!6341))))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6334)
                                   ((_ to_fp 11 53) x0_ack!6341))
                           a!4)
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!6337)
                                   ((_ to_fp 11 53) y0_ack!6336))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6334)
                                   ((_ to_fp 11 53) x0_ack!6341)))
                   a!5)))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           a!6)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6339)
                                   ((_ to_fp 11 53) x0_ack!6341))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6334)
                                   ((_ to_fp 11 53) x0_ack!6341))))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) y0_ack!6336) a!7)
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x0000000000000000) a!9))))))))

(check-sat)
(exit)
