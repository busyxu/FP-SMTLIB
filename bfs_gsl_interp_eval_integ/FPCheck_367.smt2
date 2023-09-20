(declare-fun x1_ack!4577 () (_ BitVec 64))
(declare-fun x0_ack!4584 () (_ BitVec 64))
(declare-fun x2_ack!4578 () (_ BitVec 64))
(declare-fun b_ack!4583 () (_ BitVec 64))
(declare-fun a_ack!4582 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!4579 () (_ BitVec 64))
(declare-fun y1_ack!4580 () (_ BitVec 64))
(declare-fun y2_ack!4581 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4584) ((_ to_fp 11 53) x1_ack!4577)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4577) ((_ to_fp 11 53) x2_ack!4578)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4577)
                       ((_ to_fp 11 53) x0_ack!4584))
               ((_ to_fp 11 53) x0_ack!4584))
       ((_ to_fp 11 53) x1_ack!4577)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4577)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4577)
                       ((_ to_fp 11 53) x0_ack!4584)))
       ((_ to_fp 11 53) x0_ack!4584)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4578)
                       ((_ to_fp 11 53) x1_ack!4577))
               ((_ to_fp 11 53) x1_ack!4577))
       ((_ to_fp 11 53) x2_ack!4578)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4578)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4578)
                       ((_ to_fp 11 53) x1_ack!4577)))
       ((_ to_fp 11 53) x1_ack!4577)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4577)
                    ((_ to_fp 11 53) x0_ack!4584))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4578)
                    ((_ to_fp 11 53) x1_ack!4577))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4582) ((_ to_fp 11 53) b_ack!4583))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4582) ((_ to_fp 11 53) x0_ack!4584))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4583) ((_ to_fp 11 53) x2_ack!4578))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4582) ((_ to_fp 11 53) b_ack!4583))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4582) ((_ to_fp 11 53) x0_ack!4584))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4582) ((_ to_fp 11 53) x1_ack!4577))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4583) ((_ to_fp 11 53) x0_ack!4584))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4583) ((_ to_fp 11 53) x1_ack!4577))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4577)
                    ((_ to_fp 11 53) x0_ack!4584))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!4581)
                           ((_ to_fp 11 53) y1_ack!4580))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!4578)
                                   ((_ to_fp 11 53) x1_ack!4577)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!4580)
                           ((_ to_fp 11 53) y0_ack!4579))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4577)
                                   ((_ to_fp 11 53) x0_ack!4584)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!4578)
                                   ((_ to_fp 11 53) x1_ack!4577))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4577)
                                   ((_ to_fp 11 53) x0_ack!4584))))))
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
                                   ((_ to_fp 11 53) x1_ack!4577)
                                   ((_ to_fp 11 53) x0_ack!4584))))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3fd0000000000000) a!5)
    (fp.add roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!4582)
                    ((_ to_fp 11 53) x0_ack!4584))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!4583)
                    ((_ to_fp 11 53) x0_ack!4584))))))))

(check-sat)
(exit)
