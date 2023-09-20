(declare-fun x1_ack!448 () (_ BitVec 64))
(declare-fun x0_ack!452 () (_ BitVec 64))
(declare-fun y0_ack!449 () (_ BitVec 64))
(declare-fun x_ack!450 () (_ BitVec 64))
(declare-fun y_ack!451 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!452) ((_ to_fp 11 53) x1_ack!448))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!449) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!450) ((_ to_fp 11 53) x0_ack!452))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!450) ((_ to_fp 11 53) x1_ack!448)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!451) ((_ to_fp 11 53) y0_ack!449))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!451) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y_ack!451)
          ((_ to_fp 11 53) y0_ack!449))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) y0_ack!449))))

(check-sat)
(exit)
