(declare-fun x1_ack!398 () (_ BitVec 64))
(declare-fun x0_ack!403 () (_ BitVec 64))
(declare-fun y0_ack!399 () (_ BitVec 64))
(declare-fun x_ack!401 () (_ BitVec 64))
(declare-fun y_ack!402 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z3_ack!400 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!403) ((_ to_fp 11 53) x1_ack!398))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!399) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!401) ((_ to_fp 11 53) x0_ack!403))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!401) ((_ to_fp 11 53) x1_ack!398))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!402) ((_ to_fp 11 53) y0_ack!399))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!402) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!398)
                       ((_ to_fp 11 53) x0_ack!403))
               ((_ to_fp 11 53) x0_ack!403))
       ((_ to_fp 11 53) x1_ack!398)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!398)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!398)
                       ((_ to_fp 11 53) x0_ack!403)))
       ((_ to_fp 11 53) x0_ack!403)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!399))
               ((_ to_fp 11 53) y0_ack!399))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!399)))
       ((_ to_fp 11 53) y0_ack!399)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!402)
                       ((_ to_fp 11 53) y0_ack!399))
               ((_ to_fp 11 53) y0_ack!399))
       ((_ to_fp 11 53) y_ack!402)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!402)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!402)
                       ((_ to_fp 11 53) y0_ack!399)))
       ((_ to_fp 11 53) y0_ack!399)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!402)
                                   ((_ to_fp 11 53) y0_ack!399))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!399))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!401)
                                   ((_ to_fp 11 53) x0_ack!403))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!398)
                                   ((_ to_fp 11 53) x0_ack!403)))
                   a!1)))
  (FPCHECK_FMUL_OVERFLOW a!2 z3_ack!400))))

(check-sat)
(exit)
