(declare-fun a_ack!51 () (_ BitVec 64))
(declare-fun b_ack!50 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.eq ((_ to_fp 11 53) a_ack!51) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!50) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!51)) (fp.abs ((_ to_fp 11 53) b_ack!50))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!51))
            (fp.abs ((_ to_fp 11 53) b_ack!50)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!51))
                           (fp.abs ((_ to_fp 11 53) b_ack!50)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!51))
                           (fp.abs ((_ to_fp 11 53) b_ack!50))))))
  (FPCHECK_FADD_UNDERFLOW #x3ff0000000000000 a!1)))

(check-sat)
(exit)
