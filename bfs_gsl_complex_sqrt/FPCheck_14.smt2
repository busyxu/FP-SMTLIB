(declare-fun x_ack!38 () (_ BitVec 64))
(declare-fun y_ack!37 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.eq ((_ to_fp 11 53) x_ack!38) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y_ack!37) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!38))
             (fp.abs ((_ to_fp 11 53) y_ack!37)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) x_ack!38))
                           (fp.abs ((_ to_fp 11 53) y_ack!37)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) x_ack!38))
                           (fp.abs ((_ to_fp 11 53) y_ack!37))))))
  (FPCHECK_FADD_OVERFLOW #x3ff0000000000000 a!1)))

(check-sat)
(exit)
