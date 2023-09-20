(declare-fun x_ack!44 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_tan ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun a_ack!43 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!44) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!44) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.gt ((_ to_fp 11 53) x_ack!44) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (let ((a!1 (CF_tan (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) x_ack!44))))))
  (FPCHECK_FMUL_UNDERFLOW a_ack!43 a!1)))

(check-sat)
(exit)
