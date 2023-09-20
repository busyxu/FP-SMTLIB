(declare-fun x1_ack!3431 () (_ BitVec 64))
(declare-fun x0_ack!3436 () (_ BitVec 64))
(declare-fun y0_ack!3432 () (_ BitVec 64))
(declare-fun x_ack!3434 () (_ BitVec 64))
(declare-fun y_ack!3435 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z3_ack!3433 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3436) ((_ to_fp 11 53) x1_ack!3431))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3432) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!3434) ((_ to_fp 11 53) x0_ack!3436))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!3434) ((_ to_fp 11 53) x1_ack!3431))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3435) ((_ to_fp 11 53) y0_ack!3432))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!3435) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3431)
                       ((_ to_fp 11 53) x0_ack!3436))
               ((_ to_fp 11 53) x0_ack!3436))
       ((_ to_fp 11 53) x1_ack!3431)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3431)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3431)
                       ((_ to_fp 11 53) x0_ack!3436)))
       ((_ to_fp 11 53) x0_ack!3436)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3432))
               ((_ to_fp 11 53) y0_ack!3432))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3432)))
       ((_ to_fp 11 53) y0_ack!3432)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3435)
                       ((_ to_fp 11 53) y0_ack!3432))
               ((_ to_fp 11 53) y0_ack!3432))
       ((_ to_fp 11 53) y_ack!3435)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!3435)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3435)
                       ((_ to_fp 11 53) y0_ack!3432)))
       ((_ to_fp 11 53) y0_ack!3432)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!3435)
                                   ((_ to_fp 11 53) y0_ack!3432))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!3432))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!3434)
                                   ((_ to_fp 11 53) x0_ack!3436))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3431)
                                   ((_ to_fp 11 53) x0_ack!3436)))
                   a!1)))
  (FPCHECK_FMUL_OVERFLOW a!2 z3_ack!3433))))

(check-sat)
(exit)
