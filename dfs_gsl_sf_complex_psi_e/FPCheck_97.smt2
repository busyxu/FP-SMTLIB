(declare-fun a_ack!303 () (_ BitVec 64))
(declare-fun b_ack!302 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_ceil ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (fp.geq ((_ to_fp 11 53) a_ack!303) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!303) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!303) ((_ to_fp 11 53) #x4034000000000000)))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!302))
       ((_ to_fp 11 53) #x4034000000000000)))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x4034000000000001)
               ((_ to_fp 11 53) a_ack!303))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_ceil (fp.sub roundNearestTiesToEven
                              ((_ to_fp 11 53) #x4034000000000001)
                              ((_ to_fp 11 53) a_ack!303)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!302)
                                   ((_ to_fp 11 53) #x3fa8618618618618)))
                   ((_ to_fp 11 53) #x3fa8618618618618))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!303)
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!1))
                           ((_ to_fp 11 53) #x3fa8618618618618))
                   ((_ to_fp 11 53) #x3fa8618618618618))))
  (FPCHECK_FMUL_OVERFLOW a!2 a!3))))

(check-sat)
(exit)
