(declare-fun x1_ack!458 () (_ BitVec 64))
(declare-fun x0_ack!464 () (_ BitVec 64))
(declare-fun y0_ack!459 () (_ BitVec 64))
(declare-fun x_ack!462 () (_ BitVec 64))
(declare-fun y_ack!463 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun z3_ack!461 () (_ BitVec 64))
(declare-fun z0_ack!460 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!464) ((_ to_fp 11 53) x1_ack!458))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!459) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!462) ((_ to_fp 11 53) x0_ack!464))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!462) ((_ to_fp 11 53) x1_ack!458))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!463) ((_ to_fp 11 53) y0_ack!459))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!463) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!462) ((_ to_fp 11 53) x0_ack!464))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!462) ((_ to_fp 11 53) x1_ack!458))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!463) ((_ to_fp 11 53) y0_ack!459))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!463) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!458)
                       ((_ to_fp 11 53) x0_ack!464))
               ((_ to_fp 11 53) x0_ack!464))
       ((_ to_fp 11 53) x1_ack!458)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!458)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!458)
                       ((_ to_fp 11 53) x0_ack!464)))
       ((_ to_fp 11 53) x0_ack!464)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!459))
               ((_ to_fp 11 53) y0_ack!459))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!459)))
       ((_ to_fp 11 53) y0_ack!459)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!462)
                           ((_ to_fp 11 53) x0_ack!464))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!458)
                           ((_ to_fp 11 53) x0_ack!464))))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!463)
                                   ((_ to_fp 11 53) y0_ack!459))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!459))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           a!2)
                   ((_ to_fp 11 53) z0_ack!460))))
  (FPCHECK_FADD_UNDERFLOW
    a!3
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven a!1 a!2)
            ((_ to_fp 11 53) z3_ack!461))))))

(check-sat)
(exit)
