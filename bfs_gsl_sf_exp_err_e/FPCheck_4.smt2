(declare-fun b_ack!12 () (_ BitVec 64))
(declare-fun a_ack!13 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (let ((a!1 (fp.gt (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53) a_ack!13)
                          (fp.abs ((_ to_fp 11 53) b_ack!12)))
                  ((_ to_fp 11 53) #x40862e42fefa39ef))))
  (not a!1)))
(assert (FPCHECK_FSUB_UNDERFLOW a_ack!13 (fp.abs ((_ to_fp 11 53) b_ack!12))))

(check-sat)
(exit)
