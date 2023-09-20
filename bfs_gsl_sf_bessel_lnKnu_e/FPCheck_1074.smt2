(declare-fun b_ack!2813 () (_ BitVec 64))
(declare-fun a_ack!2814 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2813) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2814) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2814) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2813) ((_ to_fp 11 53) #x4000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2813) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2814) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!2814)
                       ((_ to_fp 11 53) #x3fe0000000000000))
               ((_ to_fp 11 53) a_ack!2814))
       ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!2814)
                       ((_ to_fp 11 53) #x3fe0000000000000))
               ((_ to_fp 11 53) #x3fe0000000000000))
       ((_ to_fp 11 53) a_ack!2814)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2813) ((_ to_fp 11 53) #x4000000000000000))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!2814)
                       ((_ to_fp 11 53) #x3fe0000000000000))))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.sub roundNearestTiesToEven ((_ to_fp 11 53) a_ack!2814) a!1)
    (fp.sub roundNearestTiesToEven ((_ to_fp 11 53) a_ack!2814) a!1))))

(check-sat)
(exit)
