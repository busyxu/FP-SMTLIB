(declare-fun x1_ack!233 () (_ BitVec 64))
(declare-fun x0_ack!237 () (_ BitVec 64))
(declare-fun y0_ack!234 () (_ BitVec 64))
(declare-fun x_ack!235 () (_ BitVec 64))
(declare-fun y_ack!236 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!237) ((_ to_fp 11 53) x1_ack!233))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!234) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!235) ((_ to_fp 11 53) x0_ack!237))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!235) ((_ to_fp 11 53) x1_ack!233))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!236) ((_ to_fp 11 53) y0_ack!234))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!236) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!235) ((_ to_fp 11 53) x0_ack!237))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!235) ((_ to_fp 11 53) x1_ack!233))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!236) ((_ to_fp 11 53) y0_ack!234))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!236) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y_ack!236)
          ((_ to_fp 11 53) y0_ack!234))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) y0_ack!234))))

(check-sat)
(exit)
