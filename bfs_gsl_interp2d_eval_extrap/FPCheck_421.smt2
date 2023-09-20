(declare-fun x1_ack!4591 () (_ BitVec 64))
(declare-fun x0_ack!4596 () (_ BitVec 64))
(declare-fun y0_ack!4592 () (_ BitVec 64))
(declare-fun x_ack!4594 () (_ BitVec 64))
(declare-fun y_ack!4595 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z3_ack!4593 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!4596) ((_ to_fp 11 53) x1_ack!4591))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!4592) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!4594) ((_ to_fp 11 53) x0_ack!4596))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!4594) ((_ to_fp 11 53) x1_ack!4591))))
(assert (fp.lt ((_ to_fp 11 53) y_ack!4595) ((_ to_fp 11 53) y0_ack!4592)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4591)
                       ((_ to_fp 11 53) x0_ack!4596))
               ((_ to_fp 11 53) x0_ack!4596))
       ((_ to_fp 11 53) x1_ack!4591)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4591)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4591)
                       ((_ to_fp 11 53) x0_ack!4596)))
       ((_ to_fp 11 53) x0_ack!4596)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4592))
               ((_ to_fp 11 53) y0_ack!4592))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4592)))
       ((_ to_fp 11 53) y0_ack!4592)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!4595)
                           ((_ to_fp 11 53) y0_ack!4592))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!4592)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!4595)
                           ((_ to_fp 11 53) y0_ack!4592))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!4592)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!4595)
                                   ((_ to_fp 11 53) y0_ack!4592))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!4592))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!4594)
                                   ((_ to_fp 11 53) x0_ack!4596))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4591)
                                   ((_ to_fp 11 53) x0_ack!4596)))
                   a!1)))
  (FPCHECK_FMUL_ACCURACY a!2 z3_ack!4593))))

(check-sat)
(exit)
