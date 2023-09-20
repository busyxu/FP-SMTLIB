(declare-fun p0_ack!260 () (_ BitVec 64))
(declare-fun x0_ack!259 () (_ BitVec 64))
(declare-fun p2_ack!258 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  ((_ to_fp 11 53) p2_ack!258))
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) x0_ack!259)
                                  ((_ to_fp 11 53) p0_ack!260)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!258))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!259)
                                   ((_ to_fp 11 53) p0_ack!260))))))
  (fp.lt ((_ to_fp 11 53) #x0000000000000000) a!1)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) p2_ack!258))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!259)
                                   ((_ to_fp 11 53) p0_ack!260))))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3ff0000000000000)
            (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x0000000000000000)
                    a!1))
    (fp.div roundNearestTiesToEven ((_ to_fp 11 53) #x0000000000000000) a!1))))

(check-sat)
(exit)
