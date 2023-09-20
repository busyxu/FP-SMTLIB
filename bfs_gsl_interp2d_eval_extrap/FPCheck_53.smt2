(declare-fun x1_ack!503 () (_ BitVec 64))
(declare-fun x0_ack!507 () (_ BitVec 64))
(declare-fun y0_ack!504 () (_ BitVec 64))
(declare-fun x_ack!505 () (_ BitVec 64))
(declare-fun y_ack!506 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!507) ((_ to_fp 11 53) x1_ack!503))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!504) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!505) ((_ to_fp 11 53) x0_ack!507))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!505) ((_ to_fp 11 53) x1_ack!503)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!506) ((_ to_fp 11 53) y0_ack!504))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!506) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FSUB_UNDERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!505)
                  ((_ to_fp 11 53) x0_ack!507))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!503)
                  ((_ to_fp 11 53) x0_ack!507)))))

(check-sat)
(exit)
