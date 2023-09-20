(declare-fun x1_ack!260 () (_ BitVec 64))
(declare-fun x0_ack!268 () (_ BitVec 64))
(declare-fun y0_ack!261 () (_ BitVec 64))
(declare-fun x_ack!266 () (_ BitVec 64))
(declare-fun y_ack!267 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun z2_ack!264 () (_ BitVec 64))
(declare-fun z1_ack!263 () (_ BitVec 64))
(declare-fun z3_ack!265 () (_ BitVec 64))
(declare-fun z0_ack!262 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!268) ((_ to_fp 11 53) x1_ack!260))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!261) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!266) ((_ to_fp 11 53) x0_ack!268))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!266) ((_ to_fp 11 53) x1_ack!260))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!267) ((_ to_fp 11 53) y0_ack!261))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!267) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!266) ((_ to_fp 11 53) x0_ack!268))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!266) ((_ to_fp 11 53) x1_ack!260))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!267) ((_ to_fp 11 53) y0_ack!261))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!267) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!260)
                       ((_ to_fp 11 53) x0_ack!268))
               ((_ to_fp 11 53) x0_ack!268))
       ((_ to_fp 11 53) x1_ack!260)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!260)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!260)
                       ((_ to_fp 11 53) x0_ack!268)))
       ((_ to_fp 11 53) x0_ack!268)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!261))
               ((_ to_fp 11 53) y0_ack!261))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!261)))
       ((_ to_fp 11 53) y0_ack!261)))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) z0_ack!262)
                  ((_ to_fp 11 53) z3_ack!265))
          ((_ to_fp 11 53) z1_ack!263))
  z2_ack!264))

(check-sat)
(exit)
