(declare-fun x1_ack!453 () (_ BitVec 64))
(declare-fun x0_ack!459 () (_ BitVec 64))
(declare-fun y0_ack!454 () (_ BitVec 64))
(declare-fun x_ack!457 () (_ BitVec 64))
(declare-fun y_ack!458 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun z3_ack!456 () (_ BitVec 64))
(declare-fun z0_ack!455 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!459) ((_ to_fp 11 53) x1_ack!453))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!454) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!457) ((_ to_fp 11 53) x0_ack!459))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!457) ((_ to_fp 11 53) x1_ack!453))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!458) ((_ to_fp 11 53) y0_ack!454))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!458) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!453)
                       ((_ to_fp 11 53) x0_ack!459))
               ((_ to_fp 11 53) x0_ack!459))
       ((_ to_fp 11 53) x1_ack!453)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!453)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!453)
                       ((_ to_fp 11 53) x0_ack!459)))
       ((_ to_fp 11 53) x0_ack!459)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!454))
               ((_ to_fp 11 53) y0_ack!454))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!454)))
       ((_ to_fp 11 53) y0_ack!454)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!458)
                       ((_ to_fp 11 53) y0_ack!454))
               ((_ to_fp 11 53) y0_ack!454))
       ((_ to_fp 11 53) y_ack!458)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!458)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!458)
                       ((_ to_fp 11 53) y0_ack!454)))
       ((_ to_fp 11 53) y0_ack!454)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!457)
                           ((_ to_fp 11 53) x0_ack!459))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!453)
                           ((_ to_fp 11 53) x0_ack!459))))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!458)
                                   ((_ to_fp 11 53) y0_ack!454))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!454))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           a!2)
                   ((_ to_fp 11 53) z0_ack!455))))
  (FPCHECK_FADD_UNDERFLOW
    a!3
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven a!1 a!2)
            ((_ to_fp 11 53) z3_ack!456))))))

(check-sat)
(exit)
