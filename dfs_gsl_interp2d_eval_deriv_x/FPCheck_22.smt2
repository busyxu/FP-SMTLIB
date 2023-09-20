(declare-fun x1_ack!197 () (_ BitVec 64))
(declare-fun x0_ack!201 () (_ BitVec 64))
(declare-fun y0_ack!198 () (_ BitVec 64))
(declare-fun x_ack!199 () (_ BitVec 64))
(declare-fun y_ack!200 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!201) ((_ to_fp 11 53) x1_ack!197))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!198) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!199) ((_ to_fp 11 53) x0_ack!201))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!199) ((_ to_fp 11 53) x1_ack!197))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!200) ((_ to_fp 11 53) y0_ack!198))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!200) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!199) ((_ to_fp 11 53) x0_ack!201))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!199) ((_ to_fp 11 53) x1_ack!197))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!200) ((_ to_fp 11 53) y0_ack!198))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!200) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!197)
                       ((_ to_fp 11 53) x0_ack!201))
               ((_ to_fp 11 53) x0_ack!201))
       ((_ to_fp 11 53) x1_ack!197)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!197)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!197)
                       ((_ to_fp 11 53) x0_ack!201)))
       ((_ to_fp 11 53) x0_ack!201)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!198))
               ((_ to_fp 11 53) y0_ack!198))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!198)))
       ((_ to_fp 11 53) y0_ack!198)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!200)
                                   ((_ to_fp 11 53) y0_ack!198))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!198))))))
  (FPCHECK_FSUB_UNDERFLOW #x8000000000000000 a!1)))

(check-sat)
(exit)
