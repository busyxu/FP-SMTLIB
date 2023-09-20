(declare-fun x1_ack!283 () (_ BitVec 64))
(declare-fun x0_ack!287 () (_ BitVec 64))
(declare-fun y0_ack!284 () (_ BitVec 64))
(declare-fun x_ack!285 () (_ BitVec 64))
(declare-fun y_ack!286 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!287) ((_ to_fp 11 53) x1_ack!283))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!284) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!285) ((_ to_fp 11 53) x0_ack!287))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!285) ((_ to_fp 11 53) x1_ack!283))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!286) ((_ to_fp 11 53) y0_ack!284))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!286) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!285) ((_ to_fp 11 53) x0_ack!287))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!285) ((_ to_fp 11 53) x1_ack!283))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!286) ((_ to_fp 11 53) y0_ack!284))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!286) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FDIV_INVALID
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y_ack!286)
          ((_ to_fp 11 53) y0_ack!284))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) y0_ack!284))))

(check-sat)
(exit)
