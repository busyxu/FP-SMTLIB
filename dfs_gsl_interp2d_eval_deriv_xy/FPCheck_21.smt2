(declare-fun x1_ack!213 () (_ BitVec 64))
(declare-fun x0_ack!220 () (_ BitVec 64))
(declare-fun y0_ack!214 () (_ BitVec 64))
(declare-fun x_ack!218 () (_ BitVec 64))
(declare-fun y_ack!219 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun z1_ack!216 () (_ BitVec 64))
(declare-fun z3_ack!217 () (_ BitVec 64))
(declare-fun z0_ack!215 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!220) ((_ to_fp 11 53) x1_ack!213))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!214) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!218) ((_ to_fp 11 53) x0_ack!220))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!218) ((_ to_fp 11 53) x1_ack!213))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!219) ((_ to_fp 11 53) y0_ack!214))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!219) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!218) ((_ to_fp 11 53) x0_ack!220))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!218) ((_ to_fp 11 53) x1_ack!213))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!219) ((_ to_fp 11 53) y0_ack!214))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!219) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!213)
                       ((_ to_fp 11 53) x0_ack!220))
               ((_ to_fp 11 53) x0_ack!220))
       ((_ to_fp 11 53) x1_ack!213)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!213)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!213)
                       ((_ to_fp 11 53) x0_ack!220)))
       ((_ to_fp 11 53) x0_ack!220)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!214))
               ((_ to_fp 11 53) y0_ack!214))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!214)))
       ((_ to_fp 11 53) y0_ack!214)))
(assert (FPCHECK_FSUB_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) z0_ack!215)
          ((_ to_fp 11 53) z3_ack!217))
  z1_ack!216))

(check-sat)
(exit)
