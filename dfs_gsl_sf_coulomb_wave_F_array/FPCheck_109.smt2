(declare-fun d_ack!782 () (_ BitVec 64))
(declare-fun b_ack!781 () (_ BitVec 32))
(declare-fun a_ack!784 () (_ BitVec 64))
(declare-fun c_ack!783 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (fp.eq ((_ to_fp 11 53) d_ack!782) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (bvsle #x00000000 b_ack!781)))
(assert (fp.eq ((_ to_fp 11 53) a_ack!784) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!783)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3cb0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x402903c27f8b9c81)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4039000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!783)
                                   ((_ to_fp 11 53) c_ack!783))))))
  (FPCHECK_FMUL_ACCURACY a!1 #x4014000000000000)))

(check-sat)
(exit)
