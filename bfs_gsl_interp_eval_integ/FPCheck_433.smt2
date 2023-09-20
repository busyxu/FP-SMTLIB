(declare-fun x1_ack!5467 () (_ BitVec 64))
(declare-fun x0_ack!5474 () (_ BitVec 64))
(declare-fun x2_ack!5468 () (_ BitVec 64))
(declare-fun b_ack!5473 () (_ BitVec 64))
(declare-fun a_ack!5472 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun y0_ack!5469 () (_ BitVec 64))
(declare-fun y1_ack!5470 () (_ BitVec 64))
(declare-fun y2_ack!5471 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5474) ((_ to_fp 11 53) x1_ack!5467)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5467) ((_ to_fp 11 53) x2_ack!5468)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5467)
                       ((_ to_fp 11 53) x0_ack!5474))
               ((_ to_fp 11 53) x0_ack!5474))
       ((_ to_fp 11 53) x1_ack!5467)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5467)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5467)
                       ((_ to_fp 11 53) x0_ack!5474)))
       ((_ to_fp 11 53) x0_ack!5474)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5468)
                       ((_ to_fp 11 53) x1_ack!5467))
               ((_ to_fp 11 53) x1_ack!5467))
       ((_ to_fp 11 53) x2_ack!5468)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5468)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5468)
                       ((_ to_fp 11 53) x1_ack!5467)))
       ((_ to_fp 11 53) x1_ack!5467)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5467)
                    ((_ to_fp 11 53) x0_ack!5474))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5468)
                    ((_ to_fp 11 53) x1_ack!5467))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5472) ((_ to_fp 11 53) b_ack!5473))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5472) ((_ to_fp 11 53) x0_ack!5474))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5473) ((_ to_fp 11 53) x2_ack!5468))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5472) ((_ to_fp 11 53) b_ack!5473))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5472) ((_ to_fp 11 53) x0_ack!5474))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!5472) ((_ to_fp 11 53) x1_ack!5467))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5473) ((_ to_fp 11 53) x0_ack!5474))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5473) ((_ to_fp 11 53) x1_ack!5467)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5467) ((_ to_fp 11 53) b_ack!5473))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5467)
                    ((_ to_fp 11 53) x0_ack!5474))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!5471)
                           ((_ to_fp 11 53) y1_ack!5470))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5468)
                                   ((_ to_fp 11 53) x1_ack!5467)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!5470)
                           ((_ to_fp 11 53) y0_ack!5469))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5467)
                                   ((_ to_fp 11 53) x0_ack!5474)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5468)
                                   ((_ to_fp 11 53) x1_ack!5467))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5467)
                                   ((_ to_fp 11 53) x0_ack!5474))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FDIV_ACCURACY
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5467)
                    ((_ to_fp 11 53) x0_ack!5474))
            a!4)
    #x4008000000000000))))

(check-sat)
(exit)
