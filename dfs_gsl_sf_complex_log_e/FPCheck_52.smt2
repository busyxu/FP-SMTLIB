(declare-fun a_ack!115 () (_ BitVec 64))
(declare-fun b_ack!114 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (not (fp.eq ((_ to_fp 11 53) a_ack!115)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!114) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!115))
       (fp.abs ((_ to_fp 11 53) b_ack!114))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!115))
            (fp.abs ((_ to_fp 11 53) b_ack!114)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!115))
                           (fp.abs ((_ to_fp 11 53) b_ack!114)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!115))
                           (fp.abs ((_ to_fp 11 53) b_ack!114))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)))))
  (FPCHECK_FADD_UNDERFLOW (CF_log (fp.abs ((_ to_fp 11 53) b_ack!114))) a!2))))

(check-sat)
(exit)
