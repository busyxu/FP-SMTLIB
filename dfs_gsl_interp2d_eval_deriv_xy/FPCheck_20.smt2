(declare-fun x1_ack!197 () (_ BitVec 64))
(declare-fun x0_ack!204 () (_ BitVec 64))
(declare-fun y0_ack!198 () (_ BitVec 64))
(declare-fun x_ack!202 () (_ BitVec 64))
(declare-fun y_ack!203 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z1_ack!200 () (_ BitVec 64))
(declare-fun z3_ack!201 () (_ BitVec 64))
(declare-fun z0_ack!199 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!204) ((_ to_fp 11 53) x1_ack!197))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!198) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!202) ((_ to_fp 11 53) x0_ack!204))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!202) ((_ to_fp 11 53) x1_ack!197))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!203) ((_ to_fp 11 53) y0_ack!198))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!203) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!202) ((_ to_fp 11 53) x0_ack!204))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!202) ((_ to_fp 11 53) x1_ack!197))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!203) ((_ to_fp 11 53) y0_ack!198))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!203) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!197)
                       ((_ to_fp 11 53) x0_ack!204))
               ((_ to_fp 11 53) x0_ack!204))
       ((_ to_fp 11 53) x1_ack!197)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!197)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!197)
                       ((_ to_fp 11 53) x0_ack!204)))
       ((_ to_fp 11 53) x0_ack!204)))
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
(assert (FPCHECK_FSUB_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) z0_ack!199)
          ((_ to_fp 11 53) z3_ack!201))
  z1_ack!200))

(check-sat)
(exit)
