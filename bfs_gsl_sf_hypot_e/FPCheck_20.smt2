(declare-fun a_ack!60 () (_ BitVec 64))
(declare-fun b_ack!59 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!60) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!60))
            (fp.abs ((_ to_fp 11 53) b_ack!59)))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!60)) (fp.abs ((_ to_fp 11 53) b_ack!59))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!59))
                           (fp.abs ((_ to_fp 11 53) a_ack!60)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!59))
                           (fp.abs ((_ to_fp 11 53) a_ack!60))))))
  (FPCHECK_FADD_OVERFLOW #x3ff0000000000000 a!1)))

(check-sat)
(exit)
