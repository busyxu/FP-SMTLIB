(declare-fun d_ack!295 () (_ BitVec 64))
(declare-fun b_ack!294 () (_ BitVec 32))
(declare-fun a_ack!297 () (_ BitVec 64))
(declare-fun c_ack!296 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) d_ack!295) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!295) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!297)
                     ((_ to_fp 11 53) roundNearestTiesToEven b_ack!294))
             ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (let ((a!1 (fp.leq (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!297)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     b_ack!294))
                           ((_ to_fp 11 53) roundNearestTiesToEven b_ack!294))
                   ((_ to_fp 11 53) #xbfe0000000000000))))
  (not a!1)))
(assert (not (fp.eq ((_ to_fp 11 53) d_ack!295) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!295) ((_ to_fp 11 53) #x3ff3333333333333))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!295)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4000000000000000)
                    ((_ to_fp 11 53) c_ack!296)))))
(assert (FPCHECK_FSUB_OVERFLOW
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!297)
          ((_ to_fp 11 53) roundNearestTiesToEven b_ack!294))
  #x4014365573f6c1a5))

(check-sat)
(exit)
