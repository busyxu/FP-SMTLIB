(declare-fun a_ack!392 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!392)
                    ((_ to_fp 11 53) a_ack!392))
            ((_ to_fp 11 53) #x3f9932cbb7f0cf30))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!392) ((_ to_fp 11 53) #x4020000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!392))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!392))
             ((_ to_fp 11 53) #x4014000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!392))
            ((_ to_fp 11 53) #x4024000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!392))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x4002158ffa22f7a8))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!392))
                           a!1)
                   ((_ to_fp 11 53) #x4022cac4f877aa8b))))
  (FPCHECK_FMUL_ACCURACY (fp.abs ((_ to_fp 11 53) a_ack!392)) a!2))))

(check-sat)
(exit)
