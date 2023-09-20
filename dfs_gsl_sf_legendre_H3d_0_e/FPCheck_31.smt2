(declare-fun b_ack!131 () (_ BitVec 64))
(declare-fun a_ack!132 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_cos ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!131) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!131) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!132) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!132)
                       ((_ to_fp 11 53) b_ack!131)))
       ((_ to_fp 11 53) #x3f20000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3cc0000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!132)
                                   ((_ to_fp 11 53) b_ack!131))))))
  (FPCHECK_FMUL_UNDERFLOW
    (CF_cos (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!132)
                    ((_ to_fp 11 53) b_ack!131)))
    a!1)))

(check-sat)
(exit)
