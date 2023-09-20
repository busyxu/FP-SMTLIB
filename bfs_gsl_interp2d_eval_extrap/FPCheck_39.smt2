(declare-fun x1_ack!373 () (_ BitVec 64))
(declare-fun x0_ack!377 () (_ BitVec 64))
(declare-fun y0_ack!374 () (_ BitVec 64))
(declare-fun x_ack!375 () (_ BitVec 64))
(declare-fun y_ack!376 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!377) ((_ to_fp 11 53) x1_ack!373))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!374) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!375) ((_ to_fp 11 53) x0_ack!377))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!375) ((_ to_fp 11 53) x1_ack!373)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!376) ((_ to_fp 11 53) y0_ack!374))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!376) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!375)
          ((_ to_fp 11 53) x0_ack!377))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!373)
          ((_ to_fp 11 53) x0_ack!377))))

(check-sat)
(exit)
