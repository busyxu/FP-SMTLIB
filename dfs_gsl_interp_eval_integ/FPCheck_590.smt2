(declare-fun x1_ack!7463 () (_ BitVec 64))
(declare-fun x0_ack!7470 () (_ BitVec 64))
(declare-fun x2_ack!7464 () (_ BitVec 64))
(declare-fun b_ack!7469 () (_ BitVec 64))
(declare-fun a_ack!7468 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!7465 () (_ BitVec 64))
(declare-fun y1_ack!7466 () (_ BitVec 64))
(declare-fun y2_ack!7467 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7470) ((_ to_fp 11 53) x1_ack!7463)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7463) ((_ to_fp 11 53) x2_ack!7464)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7463)
                       ((_ to_fp 11 53) x0_ack!7470))
               ((_ to_fp 11 53) x0_ack!7470))
       ((_ to_fp 11 53) x1_ack!7463)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7463)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7463)
                       ((_ to_fp 11 53) x0_ack!7470)))
       ((_ to_fp 11 53) x0_ack!7470)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7464)
                       ((_ to_fp 11 53) x1_ack!7463))
               ((_ to_fp 11 53) x1_ack!7463))
       ((_ to_fp 11 53) x2_ack!7464)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7464)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7464)
                       ((_ to_fp 11 53) x1_ack!7463)))
       ((_ to_fp 11 53) x1_ack!7463)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7463)
                    ((_ to_fp 11 53) x0_ack!7470))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7464)
                    ((_ to_fp 11 53) x1_ack!7463))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7468) ((_ to_fp 11 53) b_ack!7469))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7468) ((_ to_fp 11 53) x0_ack!7470))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7469) ((_ to_fp 11 53) x2_ack!7464))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7468) ((_ to_fp 11 53) b_ack!7469))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7468) ((_ to_fp 11 53) x0_ack!7470))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7468) ((_ to_fp 11 53) x1_ack!7463))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!7469) ((_ to_fp 11 53) x0_ack!7470)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7463)
                    ((_ to_fp 11 53) x0_ack!7470))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!7467)
                           ((_ to_fp 11 53) y1_ack!7466))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7464)
                                   ((_ to_fp 11 53) x1_ack!7463)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!7466)
                           ((_ to_fp 11 53) y0_ack!7465))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7463)
                                   ((_ to_fp 11 53) x0_ack!7470)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7464)
                                   ((_ to_fp 11 53) x1_ack!7463))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7463)
                                   ((_ to_fp 11 53) x0_ack!7470))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FMUL_ACCURACY
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) x1_ack!7463)
            ((_ to_fp 11 53) x0_ack!7470))
    a!4))))

(check-sat)
(exit)
