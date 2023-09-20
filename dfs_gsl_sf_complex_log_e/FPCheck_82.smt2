(declare-fun a_ack!200 () (_ BitVec 64))
(declare-fun b_ack!199 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!200) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!200))
            (fp.abs ((_ to_fp 11 53) b_ack!199)))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!200))
            (fp.abs ((_ to_fp 11 53) b_ack!199)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!199))
                           (fp.abs ((_ to_fp 11 53) b_ack!199)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!199))
                           (fp.abs ((_ to_fp 11 53) b_ack!199))))))
  (FPCHECK_FADD_ACCURACY #x3ff0000000000000 a!1)))

(check-sat)
(exit)
