(declare-fun x1_ack!413 () (_ BitVec 64))
(declare-fun x0_ack!417 () (_ BitVec 64))
(declare-fun y0_ack!414 () (_ BitVec 64))
(declare-fun x_ack!415 () (_ BitVec 64))
(declare-fun y_ack!416 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!417) ((_ to_fp 11 53) x1_ack!413))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!414) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!415) ((_ to_fp 11 53) x0_ack!417))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!415) ((_ to_fp 11 53) x1_ack!413)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!416) ((_ to_fp 11 53) y0_ack!414))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!416) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FDIV_ZERO
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!415)
          ((_ to_fp 11 53) x0_ack!417))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!413)
          ((_ to_fp 11 53) x0_ack!417))))

(check-sat)
(exit)
