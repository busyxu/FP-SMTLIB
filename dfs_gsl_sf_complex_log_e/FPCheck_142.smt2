(declare-fun a_ack!432 () (_ BitVec 64))
(declare-fun b_ack!431 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!432) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!432))
            (fp.abs ((_ to_fp 11 53) b_ack!431)))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!432))
       (fp.abs ((_ to_fp 11 53) b_ack!431))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!431))
                           (fp.abs ((_ to_fp 11 53) a_ack!432)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!431))
                           (fp.abs ((_ to_fp 11 53) a_ack!432))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)))))
  (FPCHECK_FADD_ACCURACY (CF_log (fp.abs ((_ to_fp 11 53) a_ack!432))) a!2))))

(check-sat)
(exit)
