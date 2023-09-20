(declare-fun x1_ack!544 () (_ BitVec 64))
(declare-fun x0_ack!549 () (_ BitVec 64))
(declare-fun y0_ack!545 () (_ BitVec 64))
(declare-fun x_ack!547 () (_ BitVec 64))
(declare-fun y_ack!548 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z1_ack!546 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!549) ((_ to_fp 11 53) x1_ack!544))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!545) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!547) ((_ to_fp 11 53) x0_ack!549))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!547) ((_ to_fp 11 53) x1_ack!544))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!548) ((_ to_fp 11 53) y0_ack!545))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!548) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!547) ((_ to_fp 11 53) x0_ack!549))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!547) ((_ to_fp 11 53) x1_ack!544))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!548) ((_ to_fp 11 53) y0_ack!545))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!548) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!544)
                       ((_ to_fp 11 53) x0_ack!549))
               ((_ to_fp 11 53) x0_ack!549))
       ((_ to_fp 11 53) x1_ack!544)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!544)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!544)
                       ((_ to_fp 11 53) x0_ack!549)))
       ((_ to_fp 11 53) x0_ack!549)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!545))
               ((_ to_fp 11 53) y0_ack!545))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!545)))
       ((_ to_fp 11 53) y0_ack!545)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!547)
                                   ((_ to_fp 11 53) x0_ack!549))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!544)
                                   ((_ to_fp 11 53) x0_ack!549))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!548)
                                   ((_ to_fp 11 53) y0_ack!545))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!545))))))
  (FPCHECK_FMUL_OVERFLOW a!2 z1_ack!546))))

(check-sat)
(exit)
