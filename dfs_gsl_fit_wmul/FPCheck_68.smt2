(declare-fun w0_ack!257 () (_ BitVec 64))
(declare-fun w1_ack!254 () (_ BitVec 64))
(declare-fun w2_ack!255 () (_ BitVec 64))
(declare-fun w3_ack!256 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.gt ((_ to_fp 11 53) w0_ack!257) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) w1_ack!254) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) w2_ack!255) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) w3_ack!256) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) w0_ack!257) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) w1_ack!254) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) w2_ack!255) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) w3_ack!256) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) w1_ack!254)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           ((_ to_fp 11 53) w1_ack!254)))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.add roundNearestTiesToEven
            ((_ to_fp 11 53) #x0000000000000000)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x409ef00000000000)
                    a!1))
    (fp.add roundNearestTiesToEven
            ((_ to_fp 11 53) #x0000000000000000)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4026000000000000)
                    a!1)))))

(check-sat)
(exit)
