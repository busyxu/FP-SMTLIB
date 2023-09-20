(declare-fun a_ack!43 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun b_ack!42 () (_ BitVec 64))
(declare-fun CF_sin ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!43)) ((_ to_fp 11 53) #x3f20000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!43)
                                   ((_ to_fp 11 53) a_ack!43))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!43)
                                   ((_ to_fp 11 53) a_ack!43)))
                   ((_ to_fp 11 53) #x4028000000000000))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.abs a!1)
    (fp.abs (fp.mul roundNearestTiesToEven
                    (CF_sin a_ack!43)
                    ((_ to_fp 11 53) b_ack!42))))))

(check-sat)
(exit)
