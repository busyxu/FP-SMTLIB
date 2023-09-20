(declare-fun x1_ack!288 () (_ BitVec 64))
(declare-fun x0_ack!292 () (_ BitVec 64))
(declare-fun y0_ack!289 () (_ BitVec 64))
(declare-fun x_ack!290 () (_ BitVec 64))
(declare-fun y_ack!291 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!292) ((_ to_fp 11 53) x1_ack!288))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!289) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!290) ((_ to_fp 11 53) x0_ack!292))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!290) ((_ to_fp 11 53) x1_ack!288))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!291) ((_ to_fp 11 53) y0_ack!289))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!291) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!290) ((_ to_fp 11 53) x0_ack!292))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!290) ((_ to_fp 11 53) x1_ack!288))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!291) ((_ to_fp 11 53) y0_ack!289))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!291) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FDIV_ZERO
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y_ack!291)
          ((_ to_fp 11 53) y0_ack!289))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) y0_ack!289))))

(check-sat)
(exit)
