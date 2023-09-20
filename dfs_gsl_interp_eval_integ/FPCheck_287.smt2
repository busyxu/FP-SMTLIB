(declare-fun x1_ack!3466 () (_ BitVec 64))
(declare-fun x0_ack!3473 () (_ BitVec 64))
(declare-fun x2_ack!3467 () (_ BitVec 64))
(declare-fun b_ack!3472 () (_ BitVec 64))
(declare-fun a_ack!3471 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!3468 () (_ BitVec 64))
(declare-fun y1_ack!3469 () (_ BitVec 64))
(declare-fun y2_ack!3470 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3473) ((_ to_fp 11 53) x1_ack!3466)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3466) ((_ to_fp 11 53) x2_ack!3467)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3466)
                       ((_ to_fp 11 53) x0_ack!3473))
               ((_ to_fp 11 53) x0_ack!3473))
       ((_ to_fp 11 53) x1_ack!3466)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3466)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3466)
                       ((_ to_fp 11 53) x0_ack!3473)))
       ((_ to_fp 11 53) x0_ack!3473)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3467)
                       ((_ to_fp 11 53) x1_ack!3466))
               ((_ to_fp 11 53) x1_ack!3466))
       ((_ to_fp 11 53) x2_ack!3467)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3467)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3467)
                       ((_ to_fp 11 53) x1_ack!3466)))
       ((_ to_fp 11 53) x1_ack!3466)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3466)
                    ((_ to_fp 11 53) x0_ack!3473))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3467)
                    ((_ to_fp 11 53) x1_ack!3466))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3471) ((_ to_fp 11 53) b_ack!3472))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3471) ((_ to_fp 11 53) x0_ack!3473))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3472) ((_ to_fp 11 53) x2_ack!3467))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3471) ((_ to_fp 11 53) b_ack!3472))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3471) ((_ to_fp 11 53) x0_ack!3473))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3471) ((_ to_fp 11 53) x1_ack!3466))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3472) ((_ to_fp 11 53) x0_ack!3473))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3472) ((_ to_fp 11 53) x1_ack!3466))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3466)
                    ((_ to_fp 11 53) x0_ack!3473))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!3470)
                           ((_ to_fp 11 53) y1_ack!3469))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3467)
                                   ((_ to_fp 11 53) x1_ack!3466)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!3469)
                           ((_ to_fp 11 53) y0_ack!3468))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3466)
                                   ((_ to_fp 11 53) x0_ack!3473)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3467)
                                   ((_ to_fp 11 53) x1_ack!3466))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3466)
                                   ((_ to_fp 11 53) x0_ack!3473))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FDIV_UNDERFLOW
    a!4
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4008000000000000)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3466)
                    ((_ to_fp 11 53) x0_ack!3473)))))))

(check-sat)
(exit)
