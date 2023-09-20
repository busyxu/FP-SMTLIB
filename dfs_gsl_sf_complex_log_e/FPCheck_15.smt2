(declare-fun a_ack!33 () (_ BitVec 64))
(declare-fun b_ack!32 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (not (fp.eq ((_ to_fp 11 53) a_ack!33)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!32) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!33))
            (fp.abs ((_ to_fp 11 53) b_ack!32)))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!33))
            (fp.abs ((_ to_fp 11 53) b_ack!32)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!32))
                           (fp.abs ((_ to_fp 11 53) b_ack!32)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!32))
                           (fp.abs ((_ to_fp 11 53) b_ack!32))))))
  (FPCHECK_FADD_UNDERFLOW #x3ff0000000000000 a!1)))

(check-sat)
(exit)
