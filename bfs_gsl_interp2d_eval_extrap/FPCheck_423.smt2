(declare-fun x1_ack!4627 () (_ BitVec 64))
(declare-fun x0_ack!4633 () (_ BitVec 64))
(declare-fun y0_ack!4628 () (_ BitVec 64))
(declare-fun x_ack!4631 () (_ BitVec 64))
(declare-fun y_ack!4632 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun z3_ack!4630 () (_ BitVec 64))
(declare-fun z0_ack!4629 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!4633) ((_ to_fp 11 53) x1_ack!4627))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!4628) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!4631) ((_ to_fp 11 53) x0_ack!4633))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!4631) ((_ to_fp 11 53) x1_ack!4627))))
(assert (fp.lt ((_ to_fp 11 53) y_ack!4632) ((_ to_fp 11 53) y0_ack!4628)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4627)
                       ((_ to_fp 11 53) x0_ack!4633))
               ((_ to_fp 11 53) x0_ack!4633))
       ((_ to_fp 11 53) x1_ack!4627)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4627)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4627)
                       ((_ to_fp 11 53) x0_ack!4633)))
       ((_ to_fp 11 53) x0_ack!4633)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4628))
               ((_ to_fp 11 53) y0_ack!4628))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4628)))
       ((_ to_fp 11 53) y0_ack!4628)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!4632)
                           ((_ to_fp 11 53) y0_ack!4628))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!4628)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!4632)
                           ((_ to_fp 11 53) y0_ack!4628))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!4628)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!4631)
                           ((_ to_fp 11 53) x0_ack!4633))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!4627)
                           ((_ to_fp 11 53) x0_ack!4633))))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!4632)
                                   ((_ to_fp 11 53) y0_ack!4628))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!4628))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           a!2)
                   ((_ to_fp 11 53) z0_ack!4629))))
  (FPCHECK_FADD_UNDERFLOW
    a!3
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven a!1 a!2)
            ((_ to_fp 11 53) z3_ack!4630))))))

(check-sat)
(exit)
