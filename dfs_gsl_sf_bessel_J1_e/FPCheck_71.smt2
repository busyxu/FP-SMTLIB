(declare-fun a_ack!133 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_sin ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!133) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!133))
            ((_ to_fp 11 53) #x0028cccccccccccd))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!133))
            ((_ to_fp 11 53) #x3fd0000000000000))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (CF_sin a_ack!133)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!133)
                                   ((_ to_fp 11 53) a_ack!133))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   a!1
                   (fp.abs (fp.div roundNearestTiesToEven
                                   (CF_cos a_ack!133)
                                   ((_ to_fp 11 53) a_ack!133))))))
  (FPCHECK_FMUL_OVERFLOW #x3cc0000000000000 a!2))))

(check-sat)
(exit)
