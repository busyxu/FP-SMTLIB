(declare-fun b_ack!2085 () (_ BitVec 64))
(declare-fun a_ack!2086 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2085) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2086) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2086) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!2085) ((_ to_fp 11 53) #x4000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2086) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2085) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2086) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!2085) ((_ to_fp 11 53) #x4000000000000000)))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!2086)
                       ((_ to_fp 11 53) #x3fe0000000000000))))))
  (FPCHECK_FSUB_UNDERFLOW
    #x8000000000000000
    (fp.sub roundNearestTiesToEven ((_ to_fp 11 53) a_ack!2086) a!1))))

(check-sat)
(exit)
