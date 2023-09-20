(declare-fun b_ack!389 () (_ BitVec 64))
(declare-fun a_ack!390 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_sinh ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!389) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!389) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!390) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!390)
                       ((_ to_fp 11 53) b_ack!389)))
       ((_ to_fp 11 53) #x3f20000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!389) ((_ to_fp 11 53) #x403205966f2b4f12))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!390)
                                   ((_ to_fp 11 53) b_ack!389))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!390)
                                   ((_ to_fp 11 53) b_ack!389)))
                   ((_ to_fp 11 53) #x4018000000000000))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.div roundNearestTiesToEven
            ((_ to_fp 11 53) #x3ff0000000000000)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!390)
                    (CF_sinh b_ack!389)))
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!390)
                    ((_ to_fp 11 53) b_ack!389))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    a!1)))))

(check-sat)
(exit)
