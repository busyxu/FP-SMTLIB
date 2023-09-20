(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_sin ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun a_ack!32 () (_ BitVec 64))
(declare-fun b_ack!31 () (_ BitVec 64))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.div roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!32)
                                     ((_ to_fp 11 53) #x400921fb54442d18))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (CF_sin (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!32)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x400921fb54442d18))))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) b_ack!31)
            ((_ to_fp 11 53) b_ack!31))
    (fp.mul roundNearestTiesToEven a!2 a!2)))))

(check-sat)
(exit)
