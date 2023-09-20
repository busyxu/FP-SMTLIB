(declare-fun a_ack!378 () (_ BitVec 64))
(declare-fun b_ack!377 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!378) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!377) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!377) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!378) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!377)
             (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fe0000000000000)
                     ((_ to_fp 11 53) a_ack!378)))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!378) ((_ to_fp 11 53) #x412e848000000000)))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!377)
                       ((_ to_fp 11 53) a_ack!378))
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!377)
                       ((_ to_fp 11 53) a_ack!378)))
       ((_ to_fp 11 53) a_ack!378)))
(assert (let ((a!1 (fp.leq (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!377)
                                   ((_ to_fp 11 53) a_ack!378))
                           ((_ to_fp 11 53) a_ack!378))
                   ((_ to_fp 11 53) #xbff0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!377)
                                   ((_ to_fp 11 53) a_ack!378))
                           ((_ to_fp 11 53) a_ack!378)))))
  (fp.lt a!1 ((_ to_fp 11 53) #x3f48406003b2ae5a))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!377)
                                   ((_ to_fp 11 53) a_ack!378))
                           ((_ to_fp 11 53) a_ack!378))
                   ((_ to_fp 11 53) #xbfb999999999999a))))
  (FPCHECK_FADD_OVERFLOW #x3fbc71c71c71c71c a!1)))

(check-sat)
(exit)
