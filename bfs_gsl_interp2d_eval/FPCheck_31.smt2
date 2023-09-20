(declare-fun x1_ack!318 () (_ BitVec 64))
(declare-fun x0_ack!322 () (_ BitVec 64))
(declare-fun y0_ack!319 () (_ BitVec 64))
(declare-fun x_ack!320 () (_ BitVec 64))
(declare-fun y_ack!321 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!322) ((_ to_fp 11 53) x1_ack!318))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!319) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!320) ((_ to_fp 11 53) x0_ack!322))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!320) ((_ to_fp 11 53) x1_ack!318))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!321) ((_ to_fp 11 53) y0_ack!319))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!321) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!320) ((_ to_fp 11 53) x0_ack!322))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!320) ((_ to_fp 11 53) x1_ack!318))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!321) ((_ to_fp 11 53) y0_ack!319))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!321) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FSUB_OVERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) y_ack!321)
                  ((_ to_fp 11 53) y0_ack!319))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) y0_ack!319)))))

(check-sat)
(exit)
