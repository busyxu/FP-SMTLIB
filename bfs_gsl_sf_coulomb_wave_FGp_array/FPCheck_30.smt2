(declare-fun d_ack!215 () (_ BitVec 64))
(declare-fun b_ack!214 () (_ BitVec 32))
(declare-fun a_ack!217 () (_ BitVec 64))
(declare-fun c_ack!216 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) d_ack!215) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!215) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!217)
                     ((_ to_fp 11 53) roundNearestTiesToEven b_ack!214))
             ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (let ((a!1 (fp.leq (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!217)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     b_ack!214))
                           ((_ to_fp 11 53) roundNearestTiesToEven b_ack!214))
                   ((_ to_fp 11 53) #xbfe0000000000000))))
  (not a!1)))
(assert (not (fp.eq ((_ to_fp 11 53) d_ack!215) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!215) ((_ to_fp 11 53) #x3ff3333333333333))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!215)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4000000000000000)
                    ((_ to_fp 11 53) c_ack!216)))))
(assert (FPCHECK_FSUB_OVERFLOW
  d_ack!215
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4000000000000000)
          ((_ to_fp 11 53) c_ack!216))))

(check-sat)
(exit)
