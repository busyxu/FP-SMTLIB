(declare-fun x1_ack!223 () (_ BitVec 64))
(declare-fun x0_ack!227 () (_ BitVec 64))
(declare-fun y0_ack!224 () (_ BitVec 64))
(declare-fun x_ack!225 () (_ BitVec 64))
(declare-fun y_ack!226 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!227) ((_ to_fp 11 53) x1_ack!223))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!224) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!225) ((_ to_fp 11 53) x0_ack!227))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!225) ((_ to_fp 11 53) x1_ack!223))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!226) ((_ to_fp 11 53) y0_ack!224))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!226) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!225) ((_ to_fp 11 53) x0_ack!227))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!225) ((_ to_fp 11 53) x1_ack!223))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!226) ((_ to_fp 11 53) y0_ack!224))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!226) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y_ack!226)
          ((_ to_fp 11 53) y0_ack!224))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) y0_ack!224))))

(check-sat)
(exit)
