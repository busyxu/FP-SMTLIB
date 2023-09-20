(declare-fun x1_ack!393 () (_ BitVec 64))
(declare-fun x0_ack!397 () (_ BitVec 64))
(declare-fun y0_ack!394 () (_ BitVec 64))
(declare-fun x_ack!395 () (_ BitVec 64))
(declare-fun y_ack!396 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!397) ((_ to_fp 11 53) x1_ack!393))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!394) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!395) ((_ to_fp 11 53) x0_ack!397))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!395) ((_ to_fp 11 53) x1_ack!393)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!396) ((_ to_fp 11 53) y0_ack!394))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!396) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!395)
          ((_ to_fp 11 53) x0_ack!397))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!393)
          ((_ to_fp 11 53) x0_ack!397))))

(check-sat)
(exit)
