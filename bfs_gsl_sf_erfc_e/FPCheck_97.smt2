(declare-fun a_ack!152 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!152))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!152))
             ((_ to_fp 11 53) #x4014000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!152))
            ((_ to_fp 11 53) #x4024000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!152))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x4002158ffa22f7a8))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!152))
                           a!1)
                   ((_ to_fp 11 53) #x4022cac4f877aa8b))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!152))
                           a!2)
                   ((_ to_fp 11 53) #x402819103a226d88))))
  (FPCHECK_FMUL_OVERFLOW (fp.abs ((_ to_fp 11 53) a_ack!152)) a!3)))))

(check-sat)
(exit)
