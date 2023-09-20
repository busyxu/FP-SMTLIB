(declare-fun x1_ack!422 () (_ BitVec 64))
(declare-fun x0_ack!427 () (_ BitVec 64))
(declare-fun y0_ack!423 () (_ BitVec 64))
(declare-fun x_ack!425 () (_ BitVec 64))
(declare-fun y_ack!426 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z3_ack!424 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!427) ((_ to_fp 11 53) x1_ack!422))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!423) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!425) ((_ to_fp 11 53) x0_ack!427))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!425) ((_ to_fp 11 53) x1_ack!422))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!426) ((_ to_fp 11 53) y0_ack!423))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!426) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!422)
                       ((_ to_fp 11 53) x0_ack!427))
               ((_ to_fp 11 53) x0_ack!427))
       ((_ to_fp 11 53) x1_ack!422)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!422)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!422)
                       ((_ to_fp 11 53) x0_ack!427)))
       ((_ to_fp 11 53) x0_ack!427)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!423))
               ((_ to_fp 11 53) y0_ack!423))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!423)))
       ((_ to_fp 11 53) y0_ack!423)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!426)
                       ((_ to_fp 11 53) y0_ack!423))
               ((_ to_fp 11 53) y0_ack!423))
       ((_ to_fp 11 53) y_ack!426)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!426)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!426)
                       ((_ to_fp 11 53) y0_ack!423)))
       ((_ to_fp 11 53) y0_ack!423)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!426)
                                   ((_ to_fp 11 53) y0_ack!423))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!423))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!425)
                                   ((_ to_fp 11 53) x0_ack!427))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!422)
                                   ((_ to_fp 11 53) x0_ack!427)))
                   a!1)))
  (FPCHECK_FMUL_ACCURACY a!2 z3_ack!424))))

(check-sat)
(exit)
